<!DOCTYPE html>
<html>
<head>
	<title>THE REGISTRATION PAGE</title>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/navigation.css">
    <link rel="stylesheet" type="text/css" href="assets/css/register.css">
	
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
                <li><a href="log.jsp">LOGIN</a></li>
                <li><a href="guidelines.jsp">FAQ</a></li>
                <li class="active"><a href="#">REGISTER</a></li>
               
              </ul>
            </div>
          </div>
        </nav>

	<div class="reg container-fluid">
		
				<!--Start-->
				<form class="form-horizontal" method="POST" action="test.jsp">
					<h1 style="color: yellow;"> Register Here! </h1>
					<hr>
					<div class="form-group">
						<label class="control-label col-sm-4" style="color: lightblue;">Name:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" placeholder="Name" name="name">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4" style="color: lightblue;">Id:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" placeholder="Id" name="sic">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-4" style="color: lightblue;">Regd Number:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" placeholder="Registration Number" name="redgno">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4" style="color: lightblue;">Password:</label>
						<div class="col-sm-8">
							<input type="password" class="form-control" placeholder="Password" name="password">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4" style="color: lightblue;" >Re-Password:</label>
						<div class="col-sm-8">
							<input type="password" class="form-control" placeholder="Re-Password">
						</div>
					</div>
					
					<div class="form-group" style="color: white;">
						<label class="control-label col-sm-4" style="color: lightblue;">Branch:</label>
						<div class="col-sm-8">
							<input type="radio" name="branch" value="CSE" UNchecked>CSE
	  						<input type="radio" name="branch" value="IT"> IT
	  					</div>
  					</div>
					
  					<div class="form-group">
  						<label class="control-label col-sm-4" style="color: lightblue;">Semester:</label>
  						<div class="dropdown col-sm-8">
						 <select name="sems" class="btn btn-info btoon">
						 	<option>3</option>
						 	<option>5</option>
						 </select>
						</div>
  					</div> 
  					
  				<hr>
  					<div class="form-group">        
     					<div class="col-sm-offset-1 col-sm-4">
        					<input type="submit" value="REGISTER" class="btn btn-success bton">
        				</div>
        				<div class=" col-sm-2"></div>
        				<div class=" col-sm-4">
        					<input type="reset" value="RESET" class="btn btn-danger bton">
     				 	</div>
     				 </div>
  				
				<p style="text-align:center;font-weight:bold;font-size:18px;"><a href="log.jsp" style="color:yellow;">Already registered?Login</a></p>
				</form>
	</div>
</body>
</html>