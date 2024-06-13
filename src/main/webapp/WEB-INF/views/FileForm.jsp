<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>File Upload</title>
</head>
<body>
	<h2>File Upload in Spring MVC</h2>
	
	<form action="uploadfile" method="post" enctype="multipart/form-data">
		<label>Upload Image</label>
		<br /><br/>
		<input type="file" name="myFile" />
		<br /><br />
		<button>Upload</button>
	</form>
</body>
</html>