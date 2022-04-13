<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Teacher</title>
</head>
<body background="background.png">
	<form action="./AddTeacher" method="post">
		<table border="2" align="center">
			<caption>Teacher Form</caption>
			<tr>
				<td>Enter Teacher Name:</td>
				<td><input type="text" name="fname"></td>
			</tr>
			<tr>
				<td>Enter Teacher Email_Id:</td>
				<td><input type="email" name="email" required="required"></td>
			</tr>
			<tr>
				<td>Enter subject Name:</td>
				<td><input type="text" name="subject"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="submit"></td>
			</tr>
		</table>
	</form>
	<input type="button" value="Go back"
		onclick="window.location.href='MainPage.jsp'" />
</body>
</html>