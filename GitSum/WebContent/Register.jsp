<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Registration</title>
	</head>
	<body>
		<form action="RegisterServlet" method="POST">
			<br>
				Email
			<br>
				<input type="text" size="25" name="email" id="email">
			<br>
				Username
			<br>
				<input type="text" size="25" name="username" id="username">
			<br>
				password
			<br>
				<input type="password" id="password" name="password">
			<br>
				confirm password<br>
				<input type="password" id="cpassword" name="cpassword">
			
				<input type="submit" value="sign up">
		</form>
		
	</body>
</html>