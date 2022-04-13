<%@page import="com.LearnersAcademy.Dbconnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import = "java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subject Information</title>
<link type="text/css" rel="stylesheet" href="css/mainpage.css"/>
</head>
<body background="background.png">
<jsp:include page="MainPage.jsp" />
<table border="1">
<caption>Subject List</caption>
		<tr>
		<th>Id</th>
		<th>Subject Name</th>
		<th>Time</th>
		<th>Action</th>
		</tr>
<%
try{
	Class.forName(Dbconnection.driver);
	Connection conn=DriverManager.getConnection(Dbconnection.url, Dbconnection.userName, Dbconnection.password);
	Statement st=conn.createStatement();
	String query="select * from subject";
	ResultSet rSet=st.executeQuery(query);
	while(rSet.next())
	{ 
		String id=rSet.getString("id");
	%>
		<tr>
		<td><%=rSet.getInt("id") %></td>
		<td><%=rSet.getString("subject") %></td>
		<td><%=rSet.getString("time") %></td>
		<td><a href="delsubject.jsp?id=<%=id %>">Delete</a>
		</tr>
	<% }
} catch (Exception e) {
e.printStackTrace();
}
%>
</table><br><br><br><div align="left">
<form action="Newsubject.jsp">
<input type="submit" name="newsubject" value="Add subject" />
</form>
</div>

</body>
</html>