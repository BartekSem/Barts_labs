USE sakila;

SELECT * 
FROM actor, customer, film;

SELECT title
FROM film;

# show film languages as language
SELECT name AS language
FROM language; 

# show first names of staff
SELECT first_name
FROM staff;

SELECT DISTINCT release_year
FROM film;

# Determine the number of stores that the company has.
SELECT SUM(address_id)
FROM store;

# Determine the number of employees that the company has.

SELECT SUM(staff_id)
FROM staff;

# Determine how many films are available for rent and how many have been rented.
SELECT COUNT(rental_duration)
FROM film
WHERE rental_duration =  0;

SELECT COUNT(rental_duration)
FROM film
WHERE rental_duration > 1;

# Determine the number of distinct last names of the actors in the database.
SELECT DISTINCT last_name
FROM actor;

# Retrieve the 10 longest films.
SELECT length, title
FROM film
ORDER BY length DESC
LIMIT 10;

# Use filtering techniques in order to:
# 7.1 Retrieve all actors with the first name "SCARLETT".

SELECT first_name, last_name
FROM actor
WHERE first_name = "SCARLETT";

# 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT title, length 
FROM film
WHERE length > 100 AND title LIKE '%ARMAGEDDON%' 
ORDER BY length ASC 

# 7.3 Determine the number of films that include Behind the Scenes content

