<!DOCTYPE html>
<html>
<head>
	<title>THE REGISTRATION PAGE</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
          <div class="container-fluid" style="margin-block-start: inherit;text-align: -webkit-left;color: white;padding: 15px;">
              <img src="assets/img/ICON.jpg" alt="Quiz Test"> Quiz Test 
          </div>
    </nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<!--Start-->
				<form class="form-horizontal" method="POST" action="test.jsp">
					<h1 style="color: white;"> Register Here! </h1>
					<div class="form-group">
						<label class="control-label">Name:</label>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Name" name="name">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label">Id:</label>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Id" name="sic">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label">Registration Number:</label>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Registration Number" name="redgno">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label">Password:</label>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Password" name="password">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label" >Re-Password:</label>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Re-Password">
						</div>
					</div>
					<div class="form-group custom-form" style="color: white;">
						<label class="control-label">Branch:</label> <br>
						<input type="radio" name="branch" value="CSE" UNchecked>CSE
	  					<input type="radio" name="branch" value="IT"> IT 
  					</div>
  					<div class="form-group custom-form">
  						<label class="control-label">Semester:
  						<div class="dropdown">
						 <select name="sems" class="btn btn-info btn-block">
						 	<option>3</option>
						 	<option>5</option>
						 </select>
						</div>
					</label>
  					</div> 
  					<br/>
				<div class="form-group custom-form">
					<input type="submit" value="REGISTER" class="btn btn-success btn-block">
  				</div>
  				<div class="form-group custom-form">
					<input type="reset" value="RESET" class="btn btn-danger btn-block">
				</div>
				<a href="log.jsp">Alredy registered?Login</a>
				</form></div></div></div>
</body>