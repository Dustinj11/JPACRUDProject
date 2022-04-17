<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film details</title>
</head>
<body>

<div>
 		<h2>Movie ID: ${movie.id}</h2>
		<h5> Title: ${movie.title}</h5>
		<p>  Release Year: ${movie.releaseYear}</p>
		<p> Rating: ${movie.rating}</p>
		
 <form action="updateMovie.do" method="POST">
		
	Movie Title: <input type="text" value="${movie.title}" name="name" /> 
	<br>
	Release Year: <input type="text" value ="${movie.realeaseYear}" name="pokedexId" />
	<br>
	Rating: <input type="text" value ="${movie.rating}" name="type" />
	<br>
	Update the Movie? 
	<input type="text" value ="${movie.id}" name="movieId" /> 
	<input type="submit" value="update Movie" />
	</form>
	
	<form action="deleteMovie.do" method="POST">
	Input the ID of the movie you'd like to delete <br>
	 <input type="text" value ="${movie.id}" name="id" />
	</form>
	
	</div>
<a href="home.do">Return to Home</a><br/>

</body>
</html>