USE sakila;

SELECT first_name, last_name
FROM actor
WHERE actor_id = 4;

SELECT film_id, first_name, last_name
FROM actor
JOIN film_actor
USING(actor_id)
WHERE film_id = 4;

SELECT first_name, last_name
FROM actor_id;

SELECT actor_id
FROM film_actor 
WHERE film_id = (SELECT film_id
				FROM film
				WHERE title = "Adaptation Holes");
