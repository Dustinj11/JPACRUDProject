package com.skilldistillery.denzelmovies.data;

import java.util.List;

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
	
	@Override
	public Movies addMovie(Movies movie) {
//		System.out.println("********" + movie); // shows 0 id prior to adding it to DB
		
		movie.setTitle(movie.getTitle());
		movie.setReleaseYear(movie.getReleaseYear());
		movie.setRating(movie.getRating());
		
		em.persist(movie);
		em.flush();
//		System.out.println("********" + movie); // shows updated id 
		return movie;
	}

	@Override
	public Movies updateMovie(int moviesId, Movies movie) {
		
		System.out.println(movie);
		
		Movies denzelmoviesdb = em.find(Movies.class, moviesId);
		
		denzelmoviesdb.setTitle(movie.getTitle());
		denzelmoviesdb.setReleaseYear(movie.getReleaseYear());
		denzelmoviesdb.setRating(movie.getRating());
		
		System.out.println(denzelmoviesdb);
		
		em.flush();
		
		return denzelmoviesdb;
	}

	@Override
	public List<Movies> findAll() {
		String jpql = "SELECT m FROM Movies m";
		return em.createQuery(jpql, Movies.class).getResultList();
	}
	
	@Override
	public boolean delete(int moviesId) {
		Movies movie = em.find(Movies.class, moviesId);
		boolean removedMovie = false;
		boolean deleted = false;
		if(movie != null)
			em.remove(movie);
			removedMovie = !em.contains(movie);
		return false;
	}

	


}
