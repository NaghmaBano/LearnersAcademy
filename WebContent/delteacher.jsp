<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="com.LearnersAcademy.Dbconnection"%>
     <%@page import = "java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Teacher</title>
</head>
<body>
<%
String id=request.getParameter("id");
try{
    Class.forName(Dbconnection.driver);
	Connection conn=DriverManager.getConnection(Dbconnection.url, Dbconnection.userName, Dbconnection.password);
	System.out.print(conn);
	Statement st=conn.createStatement();
	String query="delete from teacher where id='"+id+"'";
	ResultSet rSet=st.executeQuery(query);
	%>
	<script type="text/javascript"> alert("successful");</script>
	<%
	response.sendRedirect("teacher.jsp");
	} catch (Exception e) {
e.printStackTrace();
}
%>


</body>
</html>