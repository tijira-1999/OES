
<!DOCTYPE html>
<html>
<head>
	<title>TIME'S UP</title>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/navigation.css">
    <link rel="stylesheet" type="text/css" href="assets/css/timeup.css">
	
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
                <li class="active"><a href="#">TIME'S UP</a></li>
                <li><a href="log.jsp">LOGOUT</a></li>
               
              </ul>
            </div>
          </div>
        </nav>

	<div class="tim container-fluid">
		
				<form class="form-horizontal">
					<div class="form-group">
						<img src="assets/img/danger.png" style="height: 150px;">
						<br>
			            <label class="control-label" style="color: white;padding-bottom:20px;" >Quiz Ends! Time's Up!!!!</label>
			            <div class=" col-sm-4">
			            	<a href="log.jsp" style="padding-left:10px;"><button class="btn btn-danger">Log Out</button></a>
			            </div>
			        </div>
			    </form>
	</div>
</body>
</html>
