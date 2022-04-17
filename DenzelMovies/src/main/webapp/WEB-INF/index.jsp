<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Denzel Washington Films</title>
</head>
<body>
	<h1>Welcome to Denzel's movies</h1>

	<form action="getMovies.do" method="POST">
		See all of Denzels movies? <input type="submit"
			value="Show Movies"/>
			<br>
	</form>
		<form action="createMovieForm.do" method="POST">
			Would you like to add a Movie? 
			<input type="submit" value="Add Movie" />
			<br>
			
		</form>
		
</body>
</html>