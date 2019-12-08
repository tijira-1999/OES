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
    <link rel="stylesheet" type="text/css" href="assets/css/addmore.css">
	
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
              	<li><a href="alog.jsp">ADMIN LOGIN</a></li>
              	<li><a href="guidelines.jsp">FAQ</a></li>
                <li class="active"><a href="log.jsp">ADD MORE</a></li>
       
              </ul>
            </div>
          </div>
        </nav>

	<div class="addmore container-fluid">
					<br><br><br>
					<h1>Question Making panel</h1>
					<div class="form-horizontal">
						<h1 style="color: white;">Do you want to add more</h1>
						<hr>
						<div class="control-form">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
							&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="questionmake.jsp"><button class="btn btn-success">YES</button></a>&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
							<a href="log.jsp"><button class="btn btn-danger">No(log me out)</button></a>
						</div>
					</div>
		
			</div>
