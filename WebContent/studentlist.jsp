<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="javax.xml.stream.events.Comment"%>
<%@page import="com.LearnersAcademy.Dbconnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import = "java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link type="text/css" rel="stylesheet" href="css/mainpage.css"/>
</head>
<body background="background.png">
<jsp:include page="MainPage.jsp" />
<table border="1">
<caption>Student List</caption>
		<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Email</th>
		<th>Action</th>
		<th> Subject</th>
		</tr>
<%
try{
    Class.forName(Dbconnection.driver);
	Connection conn=DriverManager.getConnection(Dbconnection.url, Dbconnection.userName, Dbconnection.password);
	System.out.print(conn);
	Statement st=conn.createStatement();
	String query="select * from student";
	ResultSet rSet=st.executeQuery(query);
	while(rSet.next())
	{
		String id=rSet.getString("id");
		%>
		<tr>
		<td><%=rSet.getInt("id") %></td>
		<td><%=rSet.getString("fname") %></td>
		<td><%=rSet.getString("email") %></td>
		<td><%=rSet.getString("subject") %></td>
		<td><a href="delstud.jsp?id=<%=id %>">Delete</a>
		</tr>
	<% }
} catch (Exception e) {
e.printStackTrace();
}
%>
</table><br><br>
<div align="left">	
<form action="Newstudent.jsp">
<input type="submit" name="newstudent" value="New Student" />
</form>
</div>

</body>
</html>	
