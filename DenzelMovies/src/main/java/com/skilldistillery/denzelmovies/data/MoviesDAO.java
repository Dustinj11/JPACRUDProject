package com.skilldistillery.denzelmovies.data;

import java.util.List;

import com.skilldistillery.denzelmovies.entities.Movies;

public interface MoviesDAO {

	Movies findById(int moviesId);
	
	List<Movies> findAll();
	
	Movies addMovie(Movies movie);
	
	Movies updateMovie(int id, Movies movie);
	
	boolean delete(int id);
}
