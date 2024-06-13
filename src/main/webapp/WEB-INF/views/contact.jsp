<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Page</title>
<link href="
https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css
" rel="stylesheet">
</head>
<body>
	<div style="width:500px;margin-left:60px;">
		<h3 class="mb-3">Contact Form</h3>
	
		<form action="processform" method="post">
			<div class="row m-2">
				<div class="col-md-4"><label>Email: </label></div>
				<div class="col-md-4">
					<input type="email" placeholder="Enter Email" name="email" />
				</div>
			</div>	
			<div class="row m-2">
				<div class="col-md-4"><label>User Name: </label></div>
				<div class="col-md-4">
					<input type="text" placeholder="Enter User Name" name="username" />
				</div>
			</div>
			<div class="row m-2">
				<div class="col-md-4"><label>Password: </label></div>
				<div class="col-md-4">
					<input type="password" placeholder="Enter Password" name="password" />
				</div>
			</div>
									
			<div class="row m-2">
				<div class="col-md-6">
					<button class="btn btn-success mt-2" type="submit">Submit</button>
				</div>
			</div>
		</form>
	</div>	
	<script src="
https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js
"></script>
</body>
</html>