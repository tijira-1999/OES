<!DOCTYPE html>
<html>
<head>
	<title>Question Maker</title>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/navigation.css">
    <link rel="stylesheet" type="text/css" href="assets/css/questionmake.css">
	
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
                <li class="active"><a href="#">QUESTION</a></li>
               
              </ul>
            </div>
          </div>
        </nav>

	<div class="qq container-fluid">
		
				<!--Start-->
				<form class="form-horizontal" method="POST" action="quesdb.jsp">
					<h1> Make Questions </h1>
					<hr>
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
  					
  					<div class="form-group">
  						<label class="control-label col-sm-4" style="color: lightblue;">Paper:</label>
  						<div class="dropdown col-sm-8">
						 <select name="paper" class="btn btn-info btoon">
						 	<option>os</option>
						 	<option>java</option>
						 	<option>COA</option>
						 	<option>CG</option>
						 	<option>c</option>
						 </select>
						</div>
  					</div> 
  					  					
					<div class="form-group">
						<label class="control-label col-sm-4" style="color: lightblue;">Question:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" placeholder="Question" name="ques">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4" style="color: lightblue;">Option 1:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" placeholder="Option 1" name="ans1">
						</div>
					</div>
  					
  					<div class="form-group">
						<label class="control-label col-sm-4" style="color: lightblue;">Option 2:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" placeholder="option 2" name="ans2">
						</div>
					</div>
  					
  					<div class="form-group">
						<label class="control-label col-sm-4" style="color: lightblue;">Option 3:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" placeholder="Option 3" name="ans3">
						</div>
					</div>
  				
  					<div class="form-group">
						<label class="control-label col-sm-4" style="color: lightblue;">Option 4:</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" placeholder="Option 4" name="ans4">
						</div>
					</div>
					<div class="form-group" style="color: white;" >
						<label class="control-label col-sm-4" style="color: lightblue;">Correct Answer:</label>
						<div class="col-sm-8">
							<input type="radio" name="cans" value="1" UNchecked>Option 1&nbsp;&nbsp;
	  						<input type="radio" name="cans" value="2">Option 2&nbsp;&nbsp;
	  						<input type="radio" name="cans" value="3">Option 3&nbsp;&nbsp;
					    	<input type="radio" name="cans" value="4">Option 4
					    </div>
  					</div>
  					
  					<hr>
  					<div class="form-group">        
     					<div class="col-sm-offset-2 col-sm-4">
        					<input type="submit" value="Submit" class="btn btn-success bton">
        				</div>
        				<div class=" col-sm-1"></div>
        				<div class=" col-sm-4">
        					<input type="reset" value="RESET" class="btn btn-danger bton">
     				 	</div>
     				 </div>
  				
			</form>

	</div>
</body>