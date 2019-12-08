<!DOCTYPE html>
<html>
<head>
	<title>Login page</title>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/navigation.css">
    <link rel="stylesheet" type="text/css" href="assets/css/log.css">
	
    <style>
    .navbar{
      background-color: #000;
    }
  </style>

</head>
<body>

    <!-- navbar -->

      <nav class="navbar navbar-default navbar-fixed-top">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span> 
              </button>
              <a class="navbar-brand" href="#"><img src="assets/img/ICON.jpg" class="img-rounded" alt="Quiz Test">OES</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="#">LOGIN</a></li>
                <li><a href="guidelines.jsp">FAQ</a></li>
                <li><a href="alog.jsp">ADMIN LOGIN</a></li>
               
              </ul>
            </div>
          </div>
        </nav>
    

	<div class="log container-fluid">
			
				<!--Start-->
				<form class="form-horizontal" method="POST" action="http://localhost:8082/OES/lsuccess.jsp">
					<h1 style="color: white;"> Welcome To Quiz <i class="fas fa-lightbulb" aria-hidden="true"></i> </h1>
					<hr>
					<div class="form-group">
						<label class="control-label col-sm-4" style="color: lightblue;">Id:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" placeholder="Id" name="sic">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4" style="color: lightblue;">PASSWORD:</label>
						<div class="col-sm-8">
							<input type="password" class="form-control" placeholder="PASSWORD" name="password">
						</div>
					</div>
					<br>
					
					<p style="text-align:center;font-weight:bold;font-size:18px;"><a href="register.jsp" style="color:yellow;">New user?Register here!</a></p>
					
					
					
					<div class="form-group">        
     					<div class="col-sm-offset-1 col-sm-5">
        					<input type="submit" value="Login" class="btn btn-success btn-block">
        				</div>
        				<div class=" col-sm-5">
        					<input type="reset" value="Reset" class="btn btn-danger btn-block">
     				 	</div>
     				 </div>
    				
				</form>
				<!-- form end -->
			
	</div>
</body>
</html>