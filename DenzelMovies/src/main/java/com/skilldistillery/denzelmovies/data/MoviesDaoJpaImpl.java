package com.skilldistillery.denzelmovies.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.denzelmovies.entities.Movies;

@Service
@Transactional
public class MoviesDaoJpaImpl implements MoviesDAO {
	@PersistenceContext 
	private EntityManager em;
	
	public Movies findById(int moviesId) {
		return em.find(Movies.class, moviesId);
	}

}
