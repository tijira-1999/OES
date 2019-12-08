<!DOCTYPE html>
<html>
<head>
  <title>Quiz Time</title>
  <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/navigation.css">
    <link rel="stylesheet" type="text/css" href="assets/css/startexam.css">
	
    <style>
    .navbar{
      background-color: #000;
    }
  </style>
    <script>
    function startTimer(duration, display) {
        var timer = duration, minutes, seconds;
        setInterval(function () {
            minutes = parseInt(timer / 60, 10)
            seconds = parseInt(timer % 60, 10);

            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;

            display.textContent = minutes + ":" + seconds;

            if (--timer < 0) {
                timer = duration;
                var url= "http://localhost:8082/OES/timeup.jsp"; 
                window.location = url;
            }
        }, 7000);
    }

    window.onload = function () {
        var fiveMinutes = 60 * 1,
            display = document.querySelector('#time');
        startTimer(fiveMinutes, display);
    };
  </script>
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
              	
                <li><a href="log.jsp">LOGOUT</a></li>
                <li class="active"><a href="#" id="time">01:00</li>
               
              </ul>
            </div>
          </div>
        </nav>

  <div class="start container-fluid">
    
      
     <%@ page import="java.io.*" %>
     <%@ page import="java.sql.*" %>

     <%
     int q_index = 0;
     int flag =0;
     int flag2 =0;
     String paper = null;
     %>

     <%! String ques,ans1,ans2,ans3,ans4; %>
    <%
    if(request.getParameter("value") != null){
    	String value = request.getParameter("value");
        session.setAttribute("paper", value);
        System.out.println("Val"+value);
        paper = (String) session.getAttribute("paper");
        
    }
    else
    {
    	String branch = (String) session.getAttribute("branch");
        paper = (String) session.getAttribute("paper");
    }
    
    
    /* System.out.println(sub); */
    String path = "jdbc:sqlite:E:\\Eclipse\\OES\\WebContent\\database_folder\\";
    // if (new File(path + branch+"Question.db").isFile()){
    Class.forName("org.sqlite.JDBC");
    Connection conn = DriverManager.getConnection("jdbc:sqlite:E:\\Eclipse\\OES\\WebContent\\database_folder\\"+"student.db");
    Statement stat = conn.createStatement();
    String query = "SELECT * FROM questiondb where paper='"+paper+"';";
    ResultSet rs = stat.executeQuery(query);

    int question_passed = (Integer)session.getAttribute("question_passed");

    while(q_index <= question_passed){
      if (!rs.next()){
        flag = 1;
      }
      q_index ++;
    }
    if(flag !=1){
      session.setAttribute("cans", rs.getString("cans"));
      ques = (String) rs.getString("ques");
      ans1 = (String) rs.getString("ans1");
      ans2 = (String) rs.getString("ans2");
      ans3 = (String) rs.getString("ans3");
      ans4 = (String) rs.getString("ans4");
      

    } else{
      //response.sendRedirect("final_submit.jsp");
    }
      %>
       <form class="form-horizontal" action="start_exam.jsp" method="post" name="theForm">         
          <h3 style="color: yellow;"><%=ques%></h3>
          <hr>
          
          <div class="form-group">
            <label style="color: white; class="control-label" >A: <%=ans1%></label>
          </div>

          <div class="form-group">
            <label style="color: white; class="control-label" >B: <%=ans2%></label>
          </div>

          <div class="form-group">
            <label style="color: white; class="control-label" >C: <%=ans3%></label>
          </div>

          <div class="form-group">
            <label style="color: white; class="control-label" >D: <%=ans4%></label>
          </div>


        <div class="form-group">
              <label class="control-label col-sm-6" style="color: lightblue;">Answer:</label>
              	<div class="dropdown col-sm-6">
             		<select name="ans" class="btn btn-info btoon">
            			<option value='1'> A </option>
            			<option value='2'> B </option>
            			<option value='3'> C </option>
            			<option value='4'> D </option>
          			</select>
        		</div>
        </div>

        <hr>
        <div class="form-group">        
     		<div class="col-sm-offset-1 col-sm-3">
        		<input type="submit" value="Next Question" class="btn btn-primary " formaction="http://localhost:8082/OES/next.jsp">
        	</div>
        	<div class=" col-sm-4"></div>
        	<div class=" col-sm-2">
        		<input type="button" value="Final Submit" class="btn btn-success bton" onclick="window.open('http://localhost:8082/OES/submit.jsp','_self')">
     		</div>
     	</div> 
     	
  		</form>
  	
 </div>

   </body>
</html>
