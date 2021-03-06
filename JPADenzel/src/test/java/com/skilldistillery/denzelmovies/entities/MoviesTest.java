package com.skilldistillery.denzelmovies.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class MoviesTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Movies movie;
	
	

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPADenzel");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		movie = em.find(Movies.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
	}

	@Test
	@DisplayName("testing basic movie mappings")
	void test() {
		/*
		 * SELECT id, title 
    -> FROM movies;
+----+------------------+
| id | title            |
+----+------------------+
|  1 | The Mighty Quinn |
+----+------------------+
		 */

		assertNotNull(movie);
		assertEquals("The Mighty Quinn", movie.getTitle());
		
	}

}
