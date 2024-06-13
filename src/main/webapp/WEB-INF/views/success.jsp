<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>
</head>
<body>
	<%-- <%
		String email = (String)request.getAttribute("email");
		String username = (String)request.getAttribute("username");
		String password = (String)request.getAttribute("password");
	%>
	
	<h2>Email - <%= email %></h2>
	<h2>User Name - <%= username %></h2>
	<h2>Password - <%= password %></h2> --%>
	<%-- <h1>${Header}</h1>
	<hr>
	<h1>Welcome, ${user.username}</h1>
	<h2>Email is - ${user.email}</h2>
	<h2>Password - ${user.password}</h2> --%>
	${student}
	<h2>${student.address.city}</h2>
</body>
</html>