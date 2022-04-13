<%@page import="com.LearnersAcademy.Dbconnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import = "java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Class Information</title>
<link type="text/css" rel="stylesheet" href="css/mainpage.css"/>
</head>
<body background="background.png">
<jsp:include page="MainPage.jsp" />
<div align="right" style="float:left;">
<table border="1" >
<h3>Available Subjects</h3>
		<tr>
		<th>Subject </th>
		</tr>
<%
try{
	Class.forName(Dbconnection.driver);
	Connection conn=DriverManager.getConnection(Dbconnection.url, Dbconnection.userName, Dbconnection.password);
	Statement st=conn.createStatement();
	//String query="select * from class";
	String query="select subject from subject";
	ResultSet rSet=st.executeQuery(query);
	while(rSet.next())
	{ %>
		<tr>
		<td><%=rSet.getString("subject") %></td>
		</tr>
	<% }
} catch (Exception e) {
e.printStackTrace();
}
%>
</table></div><br><br><br><br><br><br><br>
<div align="left" style="float:left;">
<form action="classReport.jsp">
select subject: <br><input type="text" name="subject"><br>
<input type="submit" name="newclass" value="Class Report" />
</form>
</div>
</body>
</html>