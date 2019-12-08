<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>
<%
String id = request.getParameter("userId");
String driverName = "org.sqlite.JDBC";
String connectionUrl = "jdbc:sqlite:E:\\Eclipse\\OES\\WebContent\\database_folder\\";

String branch = (String) session.getAttribute("branch");
String name = (String) session.getAttribute("name");
String redgno = (String) session.getAttribute("redgno");
String sic = (String) session.getAttribute("sic");
String sems = (String) session.getAttribute("sems");

System.out.println(branch);
try {
Class.forName(driverName);
} 
catch (ClassNotFoundException e) 
{
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
	try
	{ 

		connection = DriverManager.getConnection("jdbc:sqlite:E:\\Eclipse\\OES\\WebContent\\database_folder\\"+"student.db");
		statement=connection.createStatement();
		
		String sql ="SELECT distinct paper FROM questiondb where sems='" + sems + "'";
		resultSet = statement.executeQuery(sql);
		
		/* if(resultSet.next()){
		session.setAttribute("paper",resultSet.getString("paper"));
		session.setAttribute("sems",resultSet.getString("sems"));
		session.setAttribute("branch",resultSet.getString("branch"));
		out.println("success");
		//response.sendRedirect("http://localhost:8080/OES/dashboard.jsp");
	} */
		
	}
    catch(Exception e)
    {
    	System.out.print(e);
    	e.printStackTrace();
    }
%>


<!DOCTYPE html>
<html>
<head>
	<title>Dashboard</title>
	<!-- <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
     -->
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/navigation.css">
    <link rel="stylesheet" type="text/css" href="assets/css/dashboard.css">

	<style>
    .navbar{
      background-color: #000;
    }
  </style>

</head>
<body>
    
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
                <li class="active"><a href="#">DASHBOARD</a></li>
                <li><a href="log.jsp">LOGOUT</a></li>
               
              </ul>
            </div>
          </div>
        </nav>
        
    <div>
    	<div class="left">
    	<br>
    		<h1>Welcome</h1>
					<h2 ><% out.println(name); %></h2>
					<br>
					<br>
					<h3 style="color:blue;">INFO</h3><hr><br>
					<p style="color:pink;font-weight:bold">BRANCH:</p><p><% out.println(branch); %></p><br>
					<p style="color:orange;font-weight:bold">REGISTRATION NO.:</p><p><% out.println(redgno); %></p><br>
					<p style="color:yellow;font-weight:bold">SEMESTER:</p><p><% out.println(sems); %></p><br>
    	</div>
    	<div class="right">
    			
					
					
						<h1 style="color: white">Select Quiz</h1>
						<span>
							<% while(resultSet.next()){
								/* session.setAttribute("paper",resultSet.getString("paper"));
								session.setAttribute("sems",resultSet.getString("sems"));
								session.setAttribute("branch",resultSet.getString("branch")); */
							%>
							<a href="start_exam.jsp?value=<%= resultSet.getString("paper")%>">
							<button class="aa btn btn-primary" ">
							
							<% 
								String pap=resultSet.getString("paper"); 
								System.out.println(pap);
								out.println(pap);
								String sub = pap;
											
							%>
							</button>
							</a>
							<% }%>
											
										
							
						</span>
					
			
    	</div>
    </div>

</body>
</html>
