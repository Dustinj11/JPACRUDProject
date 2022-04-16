package com.skilldistillery.denzelmovies.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.denzelmovies.data.MoviesDAO;

@Controller
public class MoviesController {
	
	@Autowired
	private MoviesDAO dao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("debug", dao.findById(1));
		return "index";
	}
}
