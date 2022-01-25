SHOW databases;
USE sakila;
SHOW tables;

SELECT * FROM actor;

SELECT * FROM actor WHERE first_name = 'John';

SELECT * FROM actor WHERE last_name = 'Neeson';

SELECT * FROM actor WHERE (actor_id  % 10) = 0;

SELECT description FROM film WHERE film_id = 100;

SELECT * FROM film WHERE rating = 'R';

SELECT * FROM film WHERE rating != 'R';

SELECT * FROM film WHERE length = 'R';

SELECT * FROM film ORDER BY length ASC LIMIT 10;

SELECT title FROM film ORDER BY length ASC LIMIT 10;

SELECT * FROM film WHERE special_features LIKE "%Deleted Scenes%";

SELECT * FROM actor GROUP BY last_name HAVING COUNT(last_name) = 1;

SELECT * FROM rental;

SELECT return_date FROM rental WHERE title = 'Academy Dinosaur';