<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use PayPal\Api\Amount;
use PayPal\Api\Details;
use PayPal\Api\Item;
use PayPal\Api\ItemList;
use PayPal\Api\Payer;
use PayPal\Api\Payment;
use PayPal\Api\RedirectUrls;
use Paypal\Api\Transaction;

class PaymentController extends Controller
{
        private $_api_context;
        public function __construct()
        {
                /** PayPal api context **/
                $paypal_conf = \Config::get('paypal');
                $this->_api_context = new ApiContext(new OAuthTokenCredential(
                        $paypal_conf['client_id'],
                        $paypal_conf['secret'])
                );
                $this->_api_context->setConfig($paypal_conf['settings']);
        }
        public function payWithPayPal(Request $request)
        {
                $payer = new Payer();
                $payer->setPaymentMethod('paypal');
                $item_1 = new Item();
                /*Item 1 is the item name*/
                $item_1->setName('Item 1')
                ->setCurrency('AUD')
                ->setQuantity(1)
                /*Amount is the price*/
                ->setPrice($request->get('amount'));
                $item_list = new ItemList();
                $item_list->setItems(array($item_1));
                $amount = new Amount();
                $amount->setCurrency('AUD')
                ->setTotal($request->get('amount'));
                $transaction = new Transaction();
                $transaction->setAmount($amount)
                ->setItemList($item_list)
                ->setDescription('Thank you for your purchase, you will be redirected.');
                $redirect_urls = new RedirectUrls();
                /*Redirects the user to thanks.blade.php.*/
                $redirect_urls->setReturnUrl(URL::route('status'))
                ->setCancelUrl(URL::route('status'));
                $payment = new Payment();
                $payment->setIntent('Sale')
                ->setPayer($payer)
                ->setRedirectUrls($redirect_urls)
                ->setTransactions(array($transaction));
                try {
                        $payment->create($this->_api_context);
                } catch (\PayPal\Exception\PPConnectionException $ex) {
                        if (\Config::get('app.debug')) {
                                \Session::put('error', 'Connection timeout');
                                return Redirect::route('paywithpaypal');
                        } else {
                                \Session::put('error', 'Some error occur, sorry for inconvenient');
                                return Redirect::route('paywithpaypal');
                        }
                }
                foreach ($payment->getLinks() as $link) {
                        if ($link->getRel() == 'approval_url') {
                                $redirect_url = $link->getHref();
                                break;
                        }
                }
                /** add payment ID to session **/
                Session::put('paypal_payment_id', $payment->getId());
                if (isset($redirect_url)) {
                        /** redirect to paypal **/
                        return Redirect::away($redirect_url);
                }
                \Session::put('error', 'Unknown error occurred');
                return Redirect::route('paywithpaypal');
        }
        public function getPaymentStatus()
        {
                $payment_id = Session::get('paypal_payment_id');
                Session::forget('paypal_payment_id');
                if (empty(Input::get('PayerID')) || empty(Input::get('token'))) {
                        \Session::put('error', 'Payment failed');
                        return Redirect::to('/');
                }
                $payment = Payment::get($payment_id, $this->_api_context);
                $execution = new PaymentExecution();
                $execution->setPayerId(Input::get('PayerID'));
                /*Executes the payment!*/
                $result = $payment->execute($execution, $this->_api_context);
                if ($result->getState() == 'approved') {
                        \Session::put('success', 'Payment success');
                        return Redirect::to('/');
                }
                \Session::put('error', 'Payment failed');
                return Redirect::to('/');
        }
}
