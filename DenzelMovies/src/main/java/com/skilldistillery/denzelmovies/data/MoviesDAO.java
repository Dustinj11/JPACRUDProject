package com.skilldistillery.denzelmovies.data;

import com.skilldistillery.denzelmovies.entities.Movies;

public interface MoviesDAO {

	Movies findById(int moviesId);
	
}
