<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orders</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open Sans">
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	
	
	
</head>
<body>
    <div class="vertical">
        <div class="header">
            <h3><a href=""><strong>Marketing</strong> 4 <strong>Growth</strong></a></h3>
        </div>
        <<div class="sidenav">
            <a href="dashboard.html">Dashboard</a>
			<a href="editHome.html">Home</a>
            <a href="{{url('editNews')}}">News</a>
            <a href="editServices.html">Services</a>
			<a href="editNavigationBar.html">Navigation Bar</a>
			<a href="editContactDetails.html">Contact Details</a>
            <a href="products.html">Products</a>
            <a href="orders.html">Orders</a>
			<a href="Administrator.html">Administrator</a>
        </div>
    </div>
    <div class="content">
        <div class="row">
            <div class="col-sm-6 col-xs-6"><h3 style="margin-top: 0;">Orders</h3></div>
            <div class="col-sm-6 col-xs-6" align="right" style="margin-bottom: 20px;"><button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">Add New</button></div>
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button> <h4 class="modal-title">Modify Orders</h4>
                        </div>
                        <form action="" method="post">
                            <div class="modal-body">
                                <div class="input-container">
                                    <input class="input-field" type="text" placeholder="Order ID" name="orderID">
                                </div>
                                <div class="input-container">
                                    <input class="input-field" type="text" placeholder="First Name" name="firstName">
                                </div>
								<div class="input-container">
                                    <input class="input-field" type="text" placeholder="Last Name" name="lastName">
                                </div>
								<div class="input-container">
                                    <input class="input-field" type="text" placeholder="Email" name="email">
                                </div>
                                <div class="input-container">
                                    <input class="input-field" type="text" placeholder="Order Price" name="orderPrice">
                                </div>
								<div class="input-container">
                                    <input class="input-field" type="text" placeholder="Payment Method" name="paymentMethod">
                                </div>                                
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-success">Save Changes</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
			
            <div class="col-md-12 pad-lr" style="overflow-x:auto;">
                <table>
                    <tr>
                        <th>Order ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
						<th>Email</th>
						<th>Price</th>
						<th>Payment Method</th>
						<th>Modify</th>

                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Justin</td>
						<td>Zhao</td>
						<td>19399759@student.westernsydney.edu.au</th>
                        <td>$50</td>
						<th>PayPal</th>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Prince</td>
						<td>Chakona</td>
						<td>18982624@student.westernsydney.edu.au</td>
                        <td>$30</td>
						<td>Stripe</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Omar</td>
						<td>Chowdhury</td>
						<td>19256955@student.westernsydney.edu.au</td>
                        <td>$20</td>
						<td>Square</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
