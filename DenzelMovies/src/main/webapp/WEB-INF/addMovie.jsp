<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Movie</title>
</head>
<body>

<form action="createMovie.do" method=POST>
Movie Name: <input type="text" name="name" /> <br>
Released Year: <input type="text" name="realeaseYear" /> <br>
Movie rating: <input type="text" name="rating" /> <br>

Add this Movie? <input type="submit" value="Add Movie" />
</form>

<a href="/">Return to Home</a><br/>

</body>
</html>