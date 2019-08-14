<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Secret Code</title>
</head>
<body>

	<form action="/process" method="post">
		<label> Your name:  </label>
		<input type ="text" name = "name">
		
		<label> Dojo location:  </label>
		<input type ="text" name = "location">
		
		<label> Favorite language:  </label>
		<input type ="text" name = "language">
		
		<label> Comment (optional):  </label>
		<input type ="text" name = "comment">
		
		<button type="submit"> Button </button>
	</form>
	
</body>
</html>