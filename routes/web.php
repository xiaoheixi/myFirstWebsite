<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Database\MySqlConnection;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/administrator', function () {
    return view('administrator');
});

Route::get('/adminLogin', function () {
    return view('adminLogin');
});

Route::get('/checkout', function () {
    return view('checkout');
});

Route::get('/dashboard', function () {
    return view('dashboard');
});

Route::get('/editContactDetails', function () {
    return view('editContactDetails');
});

Route::get('/editHome', function () {
    return view('editHome');
});

Route::get('/editNavigationBar', function () {
    return view('editNavigationBar');
});

Route::get('/editNews', function () {
    return view('editNews');
});

Route::get('/editServices', function () {
    return view('editServices');
});

Route::get('/', function () {
    return view('home');
});

Route::get('/news', function () {
    return view('news');
});

Route::get('/orders', function () {
    return view('orders');
});

Route::get('/payment', function () {
    return view('payment');
});

Route::get('/products', function () {
    return view('products');
});

Route::get('/services', function () {
    return view('services');
});

Route::get('/shop', function () {
    return view('shop');
});

Route::get('/thanks', function () {
    return view('thanks');
});

Route::get('/pageManagement', function () {
    return view('pageManagement');
});

Route::post('paypal', 'PaymentController@payWithPayPal');
Route::get('status', 'PaymentController@getPaymentStatus');

//Single route declaration for multiple routes to page.
Route::resource('page', 'PageController');

Route::get('page/{URI}', function($URI) {
    $pageContent = DB::tables('Page')->where('URI',$URI);
    return view('page.dynamicPage', ['pageContent' => $pageContent]);
});