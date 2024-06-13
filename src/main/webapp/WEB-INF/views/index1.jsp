<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>
	<h2>This is home page </h2>
	
	<%
		String name = (String)request.getAttribute("name");
		int id = (int)request.getAttribute("id");
		
		List<String> lst = (List<String>)request.getAttribute("list");
	%>
	
	<h2>Name - <%= name %> and id is <%= id %></h2>
	
	<%
		for(String s : lst){
	%>
	
	<h3><%= s %></h3>
	
	<%
		}
	 %>	
</body>
</html>