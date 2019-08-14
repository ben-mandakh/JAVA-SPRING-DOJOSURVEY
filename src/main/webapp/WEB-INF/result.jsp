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
	<h1>  Submitted info: </h1>
	
	
	<p> Name:   <c:out value="${name}"/> </p>
	<p> Dojo location:   <c:out value="${location}"/> </p>
	<p> Favorite language  <c:out value="${language}"/> </p>
	<p> Comment:  <c:out value="${comment}"/> </p>
	
	<a href ="/"> <button> Go Back</button></a>
	
</body>
</html>