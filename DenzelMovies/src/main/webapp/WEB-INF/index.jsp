<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Denzel Washington Films</title>
<jsp:include page="NewBootstrap.jsp" />
</head>
<body>
<div class="has-bg-img bg-purple bg-blend-screen">
		<h1>Denzel Washington Movies</h1>
  <img class="bg-img" src="https://c4.wallpaperflare.com/wallpaper/319/121/132/movie-the-book-of-eli-actor-denzel-washington-wallpaper-thumb.jpg">
	<main class="container-fluid">

		<form action="getMovies.do" method="POST">
			<input type="submit" value="Show All of Denzel Washington's Movies" />
			<br>
		</form>
		<form action="createMovieForm.do" method="POST">
			<input type="submit" value="Add a Denzel Washington Movie" />
			<br>

</div>

		</form>
</body>
</html>