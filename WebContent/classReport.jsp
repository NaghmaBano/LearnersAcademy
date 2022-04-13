<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.LearnersAcademy.Dbconnection"%>
     <%@page import = "java.sql.*"  %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="background.png">
	<form action="./AddClass" method="post">
			<table border="2" align="center">
			<caption>Class Report</caption>
			<tr>
				<td>Student Name:</td>
				<td>Subject Name:</td>
				<td>Time</td>
				<td>Teacher Name</td>	
			</tr>
<%
try{
    Class.forName(Dbconnection.driver);
	Connection conn=DriverManager.getConnection(Dbconnection.url, Dbconnection.userName, Dbconnection.password);
	System.out.print(conn);
	Statement st=conn.createStatement();
	String sub=request.getParameter("subject");
	System.out.println("subject="+sub);
	String query="select student.fname,subject.subject,subject.time,teacher.fname from student,subject,teacher where subject.subject=teacher.subject and student.subject=subject.subject and subject.subject='"+request.getParameter("subject")+"'";
	ResultSet rSet=st.executeQuery(query);
	while(rSet.next())
	{ %>
		<tr>
		<td><%=rSet.getString("fname") %></td>
		<td><%=rSet.getString("subject") %></td>
		<td><%=rSet.getString("time") %></td>
		<td><%=rSet.getString("fname") %></td>
		</tr>
	<% }
} catch (Exception e) {
e.printStackTrace();
}
%>
</table><br><br>
</form>
<input type="button" value="Go back" 
        onclick="window.location.href='MainPage.jsp'"/>
			
</body>
</html>