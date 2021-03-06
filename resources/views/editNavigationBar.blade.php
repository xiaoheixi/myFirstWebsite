<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Navigation Bar</title>
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
        <div class="sidenav">
            <a href="dashboard.html">Dashboard</a>
			<a href="editHome.html">Home</a>
            <a href="editNews.html">News</a>
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
            <div class="col-sm-6 col-xs-6"><h3 style="margin-top: 0;">Navigation Bar</h3></div>
            <div class="col-sm-6 col-xs-6" align="right" style="margin-bottom: 20px;"><button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">Add New</button></div>
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button> <h4 class="modal-title">Add</h4>
                        </div>
                        <form action="" method="post">
                            <div class="modal-body">
                                <div class="input-container">
                                    <input class="input-field" type="text" placeholder="Name" name="name">
                                </div>
                                <div class="input-container">
                                    <input class="input-field" type="text" placeholder="Link" name="link">
                                </div>
								<div class="input-container">
                                    <input class="input-field" type="text" placeholder="Text Size" name="textSize">
                                </div>
								<div class="input-container">
                                    <input class="input-field" type="text" placeholder="Text Colour" name="textColour">
                                </div>	
								<div class="input-container">
                                    <input class="input-field" type="text" placeholder="Background Colour" name="backgroundColour">
                                </div>	
								<div class="input-container">
                                    <input class="input-field" type="text" placeholder="Font" name="font">
                                </div>
								<div class="input-container">
                                    <input class="input-field" type="text" placeholder="Order" name="order">
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
                        <th>Name</th>
                        <th>Link</th>
                        <th>Text Size</th>
						<th>Text Colour</th>
						<th>Background Colour</th>
						<th>Font</th>
						<th>Order</th>	
						<th>Modify</th>
                    </tr>
                    <tr>
                        <td>Home</td>
                        <td>home.html</td>
                        <td>12</td>
						<td>Black</td>
						<td>White</td>
						<td>Open Sans</td>
						<td>1</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
                    <tr>
                        <td>News</td>
                        <td>news.html</td>
                        <td>12</td>
						<td>Black</td>
						<td>White</td>
						<td>Open Sans</td>
						<td>2</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
					<tr>
                        <td>Services</td>
                        <td>services.html</td>
                        <td>12</td>
						<td>Black</td>
						<td>White</td>
						<td>Open Sans</td>
						<td>3</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
					<tr>
                        <td>Shop</td>
                        <td>shop.html</td>
                        <td>12</td>
						<td>Black</td>
						<td>White</td>
						<td>Open Sans</td>
						<td>4</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
					<tr>
                        <td>Contact Us</td>
                        <td></td>
                        <td>12</td>
						<td>Black</td>
						<td>White</td>
						<td>Open Sans</td>
						<td>5</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
					<tr>
                        <td>MEMBER LOGIN</td>
                        <td>https://marketing4growth.com.au/</td>
                        <td>14</td>
						<td>Blue</td>
						<td>White</td>
						<td>Open Sans</td>
						<td>6</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
