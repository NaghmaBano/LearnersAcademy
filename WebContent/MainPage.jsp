<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>/Main Page</title>
<link type="text/css" rel="stylesheet" href="css/mainpage.css"/>
</head>
<body background="background.png">
	<div class="top">
			<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Learner's Academy</h1>
	</div>
	<div class="left">
	<h2>Menu</h2>
	<form action="studentlist.jsp" method="post">
	<input type="submit" name="student" value="STUDENT INFO"/><br><br>
	</form>
	<form action="teacher.jsp" method="post">
	<input type="submit" name="teacher" value="TEACHER INFO"/><br><br>
	</form>
	<form action="subject.jsp" method="post">
	<input type="submit" name="subject" value="SUBJECT INFO"/><br><br>
	</form>
	<form action="class.jsp" method="post">
	<input type="submit" name="class" value="CLASS INFO"/><br><br>
	</form>
	<form action="logout.jsp" method="post" style="align-items: flex-end;">
	<input type="submit" name="logout" value="Logout"/><br><br>
	</form>
	
	
	</div>

</body>
</html>