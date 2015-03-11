<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>main page</title>
	</head>
	<body>
		<%if(session.getAttribute("currentSessionUser")==null)
			response.sendRedirect("Login.jsp") ;%>
		<%String name=request.getParameter("username");%>
		
		<h1>
			welcome
			<%=name%>
			<form>
  					<input type="button" value="Java" onclick="java()">
					<input type="button" value="javascript" onclick="javascript()">
					<input type="button" value="CSS" onclick="CSS()">
					<input type="button" value="shell" onclick="shell()">
					<input type="button" value="Ruby" onclick="Ruby()">
					<input type="button" value="Python" onclick="Python()">
					<input type="button" value="C++" onclick="cpp()">
					<input type="button" value="C" onclick="c()">
			</form>
		<script>
				function java() {
    					alert("u clicked java button");
				}
				
				function javascript() {
					alert("u clicked javascript button");
				}
				
				function CSS() {
					alert("u clicked CSS button");
				}
				
				function shell() {
					alert("u clicked shell button");
				}
				
				function Ruby() {
					alert("u clicked Ruby button");
				}
				
				function Python() {
					alert("u clicked Python button");
				}
				
				function cpp() {
					alert("u clicked cpp button");
				}
				
				function c() {
					alert("u clicked C button");
				}
				
</script>
		</h1>
	</body>
</html>