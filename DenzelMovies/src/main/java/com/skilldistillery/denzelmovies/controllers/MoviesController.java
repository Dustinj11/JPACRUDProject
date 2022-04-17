package com.skilldistillery.denzelmovies.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.denzelmovies.data.MoviesDAO;
import com.skilldistillery.denzelmovies.entities.Movies;

@Controller
public class MoviesController {
	
	@Autowired
	private MoviesDAO dao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("movie", dao.findById(1));
		return "index";
	}
	
//	get all movies
	@RequestMapping (path="getMovies.do")
	public String show(Integer movieId, Model model) {
		model.addAttribute("movies", dao.findAll());
		return "AllMovies";
	}
	
//	CREATE A NEW MOVIE
	
	@RequestMapping (path="createMovieForm.do", method=RequestMethod.POST)
	public String createMovieForm(Model model, Movies movie) {
		return "addMovie";
	}
	
	@RequestMapping (path="createMovie.do", method=RequestMethod.POST)
	public String createMovie(Model model, Movies movie) {
		model.addAttribute("movie", dao.addMovie(movie));
		return "addConfirmation";
	}
	
//	EDIT AND UPDATE 
	@RequestMapping (path="updateMovie.do", method=RequestMethod.GET)
	public String update(Model model, int id) {
		Movies m = dao.findById(id);
		model.addAttribute("movie", m);
		return "updateMovie";
	}
	
	@RequestMapping (path="updateMovie.do", method=RequestMethod.POST)
	public String updateMovie(int id, Movies movie, Model model) {
		Movies newMovie = dao.updateMovie(id, movie);
		model.addAttribute("movie", newMovie);
		return "updateConfirmation";
	}
	
// DELETE
	@RequestMapping (path="deleteMovie.do")
	public String deleteMovie(int id, Model model) {
		model.addAttribute("pokemon", dao.delete(id));
		return "deleteConfirmation";
	}

}
