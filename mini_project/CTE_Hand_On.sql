USE sakila;

WITH average_spent AS (SELECT AVG(total_spent) avg_total_spent
						FROM (SELECT SUM(amount) AS total_spent
                        FROM payment
                        GROUP BY customer_id) AS tspc)

SELECT customer_id, SUM(amount)
FROM payment 
GROUP BY customer_Id
HAVING SUM(amount) > (SELECT average_spent
					  FROM average_spent);