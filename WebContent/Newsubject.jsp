<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Subject</title>
</head>
<body background="background.png">
	<form action="./AddSubject" method="post">
		<table border="2" align="center">
			<caption>Subject Form</caption>
				<td>Enter Subject Name:</td>
				<td><input type="text" name="subject" required="required"></td>
			</tr>
			<tr>
				<td>Enter Time:</td>
				<td><input type="text" name="time" required="required"></td>
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