<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Movie</title>
<jsp:include page="NewBootstrap.jsp" />
</head>
<body>
	<main class="container-fluid">
		<h1>Add a Denzel Washington Movie</h1>
		<form action="createMovie.do" method=POST>

			Movie Name: <input type="text" name="title" /> <br> Released
			Year: <input type="text" name="releaseYear" /> <br> Movie
			rating: <input type="text" name="rating" /> <br> Add this
			Movie? <input type="submit" value="Add Movie" />
		</form>

		<a href="/">Return to Home</a><br />
</body>
</html>