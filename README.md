# JPACRUDProject

This program is a basic CRUD program that iterates through a database of some of Denzel Washington's movies. From the main page you are given a short welcome, with two options. The two options are to see a list of all the films in the database or add a movie to the database.

Selecting add a movie will bring you to a separate page that will allow you to add a movie with the required basic information of a Title, Release Year, and Rating.

Selecting See all movies will bring you to a separate page that shows a list of all movies currently in the database. At the bottom of the page it also allows you to edit a movie by inputting the basic information using the list above it as a reference. This also works with the delete a movie option. You can use the above list as a reference and delete on of the movies on the list. If you choose to edit or delete a page will update you if it was done successfully. Every page also has a return to home button at the bottom.

One of the biggest lessons I learned was in order to complete my edit I had to use a Requestmethod GET combined with a POST. I originally used two POST methods and could not get them to work in the controller. With some help from a couple classmates we re-wrote the code to GET the requested information and then POST the information.

The main purpose of this project was to use JPA in order to iterate through the database and allow basic CRUD operations. The program allows for the user to map through the SQL tables through the entity created. The program integrates a Spring MVC project with a JPA project.

Overall this project was exciting to do, it allowed me to gain a good understanding of JPA and how it is used. I was also provided time to utilize bootstrap on my program to give it a little more design. I have never used bootstrap before so it was fun to see how you are able to design a website. 
