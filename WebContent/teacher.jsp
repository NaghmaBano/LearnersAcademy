<%@page import="com.LearnersAcademy.Dbconnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher Information</title>
<link type="text/css" rel="stylesheet" href="css/mainpage.css"/>
</head>
<body background="background.png">
<jsp:include page="MainPage.jsp" />
<table border="1">
<caption>Teacher List</caption>
		<tr>
		<th>id</th>
		<th>Name</th>
		<th>Email</th>
		<th>Subject</th>
		<th>Action</th>
		</tr>
<%
try{
	Class.forName(Dbconnection.driver);
	Connection conn=DriverManager.getConnection(Dbconnection.url, Dbconnection.userName, Dbconnection.password);
	//System.out.print("in teacher " +conn);
	Statement st=conn.createStatement();
	//String query="select * from teacher";
	String query="select * from teacher";
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
		<td><a href="delteacher.jsp?id=<%=id %>">Delete</a>
		</tr>
	<% }
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<div>
<form action="newteacher.jsp">
<input type="submit" name="newteacher" value="Assign Teacher to subject" />
</form>
</div>

</body>
</html>