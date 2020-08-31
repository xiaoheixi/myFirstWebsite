<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="styles/login.css">
	
</head>
<body>
    <!-- Brief description about this page-->
    <div class="container">
        <form action="{{url('dashboard')}}" method="get" style="max-width:500px;margin:auto">
            <img src="../images/Marketing_4_Growth_Logo.png" alt="logo" width="100%" style="margin-bottom: 20px;">
            <div class="input-container">
                <input class="input-field" type="text" placeholder="Username" name="username">
            </div>

            <div class="input-container">
                <input class="input-field" type="password" placeholder="Password" name="psw">
            </div>
            <a href="{{url('dashboard')}}"></a><button type="submit" class="btn" onclick="window.open({{url('dashboard')}})">Login</button>
        </form>
    </div>
</body>
</html>