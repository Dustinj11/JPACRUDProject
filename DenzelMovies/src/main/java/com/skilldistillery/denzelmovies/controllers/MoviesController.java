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
	
	@RequestMapping (path="createMovieForm.do", method=RequestMethod.POST)
	public String createMovieForm(Model model, Movies movie) {
		return "addMovie";
	}
	
	@RequestMapping (path="createMovie.do", method=RequestMethod.POST)
	public String createMovie(Model model, Movies movie) {
		model.addAttribute("movie", dao.addMovie(movie));
		return "addConfirmation";
	}

}
