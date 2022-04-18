<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of Denzels Movies</title>
<jsp:include page="NewBootstrap.jsp" />
</head>
<body>
	<main class="container-fluid">
		<h1>List of Denzel Washington Movie's</h1>
		<c:choose>
			<c:when test="${! empty movies}">

				<form action="updateMovie.do" method="POST">
			<table class=" table table-striped">
			<thead class ="table-dark">
			<tr>
			<th>Id</th>
			<th>Title</th>
			<th>Release Year</th>
			<th>Rating</th>
			</tr>
			</thead>
			<tbody>
			
			<c:forEach var="m" items="${movies}">
			<tr>
				<td>${m.id}</td>
				<td>${m.title}</td>
				<td>${m.releaseYear}</td>
				<td>${m.rating}</td>
				</c:forEach>
			</tr>
			</tbody>
			</table>
					<h2>Edit a Movie</h2>

					Movie Id: <input type="text" name="id" /> Movie Title: <input
						type="text" name="title" /> <br> Release Year: <input
						type="text" name="releaseYear" /> <br> Rating: <input
						type="text" name="rating" /> <br> Update the Movie? <input
						type="submit" value="Update Movie" />
				</form>

				<form action="deleteMovie.do" method="POST">
					<h3>Delete a Movie</h3>
					Input the ID of the movie you'd like to delete <br> <input
						type="text" value="${movie.id}" name="id" />
				</form>

				<a href="/">Return to Home</a>
				<br />
			</c:when>
		</c:choose>
</body>
</html>