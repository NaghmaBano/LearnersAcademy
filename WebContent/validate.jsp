<%@page import="java.awt.Color"%>
<%@page import="org.apache.coyote.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("uname");
System.out.println("name=" +name);
String pwd=request.getParameter("password");
System.out.println("password=" +pwd);
if((name.equals("admin"))&&(pwd.equals("admin")))
{
	              HttpSession s = request.getSession();

    out.println("<center><h1>Welcome: " + name + "</h1>");

    out.println("<br/><b>You are successfully login........ ");
	
	response.sendRedirect("MainPage.jsp");
}
else{
	String message="Username and password is invalid";
	out.write("Invalid user");%>
	<script type="text/javascript">
	window.alert("Invalid User");
	</script>
	<% response.sendRedirect("index.html");
		
}
%>


</body>
</html>