<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Marketing 4 Growth</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open Sans">
    <link href="css/bootstrap-4.0.0.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="top: 0;">
        <div class="container">
            <a class="navbar-brand" href="index.html"><img src="images/Marketing_4_Growth_Logo.png" alt="Marketing4Growth" width="100%"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"> <a class="nav-link" href="index.html">Home</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="news.html">News</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="services.html">Services</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="shop.html">Shop</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="" data-toggle="modal" data-target="#myModal">Contact Us</a> </li>
                    <li class="nav-item"> <button class="nav-button btn btn-outline-primary" onclick="window.open('https://marketing4growth.com.au/')">Member Login</button> </li>
                </ul>
            </div>
        </div>
    </nav>
    <div><div style="margin-top: 100px;">&nbsp;</div></div>
    <div class="container" style="min-height: 575px;">
        <div class="row">
            <div class="col-lg-7 col-12 table">
                <h3>Your Cart</h3>
                <table class="table-hover" width="50%">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Product</th>
                            <th>Price</th>
                            <th>Qty</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Item One</td>
                            <td>$24.99</td>
                            <td>1</td>
                            <td>$24.99</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Item Two</td>
                            <td>$24.01</td>
                            <td>1</td>
                            <td>$24.01</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th colspan="3"></th>
                            <th>2</th>
                            <th>$49</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <hr>
            <div class="col-lg-5 col-12">
                <div class="row mx-0">
                    <div class="col-12 card bg-light mx-auto">
                    <div class="w3-container">
                    @if ($message = Session::get('success'))
                    <div class="w3-panel w3-green w3-display-container">
                        <span onclick="this.parentElement.style.display='none'"
                            class="w3-button w3-green w3-large w3-display-topright">&times;</span>
                        <p>{{ $$message }}</p>
                    </div>
                    <?php Session::forget('success');?>
                    @endif
                    @if ($message = Session::get('error'))
                    <div class="w3-panel w3-red w3-display-container">
                        <span onclick="this.parentElement.style.display='none'"
                            class="w3-button w3-red w3-large w3-display-topright">&times;</span>
                            <p>{{ $$message }}</p>
                            </div>
                    <?php Session::forget('error');?>
                    @endif
                    <form class="w3-container w3-display-middle w3-card-4 " method="POST" id="payment-form"  action="{!! URL::to('paypal') !!}">
  <h2 class="w3-text-blue">Payment Form</h2>
  <p>
  <label class="w3-text-blue"><b>Enter First Name</b></label>
  <input class="w3-input w3-border" name="firstName" type="text">
  </p>
  <p>
  <label class="w3-text-blue"><b>Enter Last Name</b></label>
  <input class="w3-input w3-border" name="lastName" type="text">
  </p>
  <p>
  <label class="w3-text-blue"><b>Enter Email</b></label>
  <input class="w3-input w3-border" name="email" type="text">      
  </p>
  <p>
  <label class="w3-text-blue"><b>Enter Amount</b></label>
  <input class="w3-input w3-border" name="amount" type="text"></p>      
  <button class="w3-btn w3-blue">Pay with PayPal</button></p>
</form>
</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-12">
                    <address class="text-left">
                       <h3 class="text-left">Marketing4Growth</h3>
        		<p>Mobile: 0409 040 443</p>
				<p>Office: 02 8697 9647</p>
				<p>Postal: PO Box 1125 Camden NSW 2570</p>
				<p>Address: Level 2 Oran Park Podium, 351 Oran Park Drive Oran Park NSW 2570</p>
        		<p>Email: support@marketing4growth.com.au</p>
                    </address>
                </div>
                        
                    </address>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Contact Us</h4><button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <form action="" method="post">
                    <div class="modal-body">
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Name" name="name">
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Phone" name="phone">
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Email" name="mail">
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Subject" name="sub">
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" placeholder="Details" name="desc"></textarea>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success">Send</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <footer class="text-center">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <p>© All content copyright 2020 | <a href="https://marketing4growth.com.au/privacy">Privacy Statement</a></p>
                </div>
            </div>
        </div>
    </footer>
    <script src="js/jquery-3.2.1.min.js"></script> 
    <script src="js/popper.min.js"></script> 
    <script src="js/bootstrap-4.0.0.js"></script>
</body>
</html>