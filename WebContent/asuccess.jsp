<%@page import = "java.sql.*" %>
<%@ page import = "java.io.*"%>
<%@ page import = "java.util.*"%>

<%

String uname=(String)request.getParameter("sic");
System.out.println(uname);
String pwd=request.getParameter("password");
String id = request.getParameter("userid");
String driver = "org.sqlite.JDBC";
String connectionUrl = "jdbc:sqlite:E:\\Eclipse\\OES\\WebContent\\database_folder\\";
String database = "student.db";
String userid = "root";
String password = "";
String paswd= null;
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
try{
	Class.forName(driver);
	Connection con = DriverManager.getConnection(connectionUrl+database, userid, password);
	Statement st =con.createStatement();
	String sql ="select password from adminlog where id = '"+uname+"'";
	ResultSet rs = st.executeQuery(sql);
	while(rs.next()){
		paswd = rs.getString(1);
	}
	rs.close();
	con.close();
	st.close();
}
catch(Exception e)
{
	e.printStackTrace();
}
if(pwd.equals(paswd)){
	response.sendRedirect("questionmake.jsp");	
}
else{
	out.println("Login failed.");
}

%>