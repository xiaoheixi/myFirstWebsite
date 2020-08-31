<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products</title>
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
            <div class="col-sm-6 col-xs-6"><h3 style="margin-top: 0;">Products</h3></div>
            <div class="col-sm-6 col-xs-6" align="right" style="margin-bottom: 20px;"><button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">Add New</button></div>
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button> <h4 class="modal-title">Add Products</h4>
                        </div>
                        <form action="" method="post">
                            <div class="modal-body">
							<h1>Edit Books</h1>
                                <div class="input-container">
                                    <input class="input-field" type="text" placeholder="Book ID" name="bookID">
                                </div>
                                <div class="input-container">
                                    <input class="input-field" type="text" placeholder="Book Name" name="bookName">
                                </div>
                                <div class="input-container">
                                    <input class="input-field" type="text" placeholder="Book Price" name="bookPrice">
                                </div>
							<h1>Edit Audio</h1>
								<div class="input-container">
                                    <input class="input-field" type="text" placeholder="Audio ID" name="audioID">
                                </div>
                                <div class="input-container">
                                    <input class="input-field" type="text" placeholder="Audio Name" name="audioName">
                                </div>
                                <div class="input-container">
                                    <input class="input-field" type="text" placeholder="Audio Price" name="audioPrice">
                                </div>
							<h1>Edit Videos</h1>
								<div class="input-container">
                                    <input class="input-field" type="text" placeholder="Video ID" name="videoID">
                                </div>
                                <div class="input-container">
                                    <input class="input-field" type="text" placeholder="Video Name" name="videoName">
                                </div>
                                <div class="input-container">
                                    <input class="input-field" type="text" placeholder="Video Price" name="videoPrice">
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
			
				<h3>Books</h3>
                <table>
                    <tr>
                        <th>Book ID</th>
                        <th>Book Name</th>
                        <th>Book Price</th>
						<th>Modify</th>

                      
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>The Ultimate Guide To Marketing!</td>
                        <td>$50</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Marketing Tips and Tricks!</td>
                        <td>$30</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>How To Be Successful At Marketing!</td>
                        <td>$20</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
                </table>
				<h3>Audio</h3>
				<table>
                    <tr>
                        <th>Audio ID</th>
                        <th>Audio Name</th>
                        <th>Audio Price</th>
						<th>Modify</th>


                      
                    </tr>
                    <tr>
                       <td>4</td>
                        <td>The Ultimate Guide To Finance!</td>
                        <td>$50</td>


                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Marketing Tips and Tricks!</td>
                        <td>$30</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>How To Be Successful At Marketing!</td>
                        <td>$20</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
                </table>
                </table>

				<h3>Videos</h3>
				<table>
                    <tr>
                        <th>Video ID</th>
                        <th>Video Name</th>
                        <th>Video Price</th>
						<th>Modify</th>

                      
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>The Ultimate Guide To Profit!</td>
                        <td>$50</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>Profiting Tips and Tricks!</td>
                        <td>$30</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>How To Be Successful At Profiting!</td>
                        <td>$20</td>
                        <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button> <button type="button" class="btn btn-danger">Delete</button></td>
                    </tr>
                </table>

            </div>
        </div>
    </div>
</body>
</html>
