<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "org.sqlite.JDBC";
String connectionUrl = "jdbc:sqlite:E:\\Eclipse\\OES\\WebContent\\database_folder\\";
String database = "student.db";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>

<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>name</td>
<td>password</td>


</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from java";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<%=resultSet.getString("question") %><br/>
<%=resultSet.getString("a") %><br/>
<%=resultSet.getString("b") %><br/>
<%=resultSet.getString("c") %>


<%
String name1 = "hggsd";
String pass1 = "12334";
int i=statement.executeUpdate("insert into users(name,password)values('"+name1+"','"+pass1+"')");
out.println("Data is successfully inserted!");
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>