<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Date"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page isELIgnored="false" %>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Help page</title>
</head>
<body>

	<%
		/* String name = (String)request.getAttribute("name");
		int rollNo = (int)request.getAttribute("rollNo");
		LocalDateTime dat = (LocalDateTime)request.getAttribute("time"); */
	%>
	<h1>Hello spring</h1>
	<%-- <h2>This is help page time is <%=dat %></h2> --%>
	<%-- <h2>
		My name is <%= name %> and roll no. is <%= rollNo %>
	</h2> --%>
	${name}
	<h1>${ time }</h1>
	
	<hr>
	${marks}
	
	<!-- using JSTL -->
	<%-- <c:forEach var="item" items="${marks}">
		<h3>${item}</h3>
	</c:forEach>
	 --%>
	
	
</body>
</html>