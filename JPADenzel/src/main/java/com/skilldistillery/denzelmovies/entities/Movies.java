package com.skilldistillery.denzelmovies.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Movies {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	
	@Column(name="release_year")
	private int releaseYear; 
	private String rating;
	

	public Movies() {}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public int getReleaseYear() {
		return releaseYear;
	}


	public void setReleaseYear(int releaseYear) {
		this.releaseYear = releaseYear;
	}


	public String getRating() {
		return rating;
	}


	public void setRating(String rating) {
		this.rating = rating;
	}


	@Override
	public String toString() {
		return "Movies [id=" + id + ", title=" + title + ", releaseYear=" + releaseYear + ", rating=" + rating + "]";
	}


	
	
}
