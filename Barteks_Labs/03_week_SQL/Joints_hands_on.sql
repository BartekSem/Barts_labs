USE bank;

# scenario with join on "USING"
# only when column names match we use using like example below. opposite to ON when they are the diff. names. 
SELECT a.account_id, district_id, amount
FROM account AS a
INNER JOIN loan AS l
USING(account_id);

#------ scenario with join "ON" 
# column names match here so we would use the version above to join with "USING"
# SELECT a.account_id, district_id, amount
# FROM account AS a
# INNER JOIN loan AS l
# ON a.account_id = l.account_id

# retrieve number of loan per district 

SELECT a.district_id, COUNT(loan_id) AS loan_count
FROM account AS a  
INNER JOIN loan AS l
ON a.account_id = l.account_id
# USING(account_id) # we can use using when same names 
GROUP BY a.district_id
ORDER BY loan_count DESC
LIMIT 5;

USE sakila;

# how many cities in Canada and Italy

SELECT COUNT(DISTINCT city_id) AS number_of_cities
FROM city
JOIN country
USING (country_id)
WHERE country in ("Canada", "Italy")
GROUP BY country;

# retrive the number of addresses per country
# tables to join
#  city country
SELECT country, COUNT(address_id)
	#CASE 
   # WHEN 
FROM address
JOIN city
USING(city_id)
JOIN country
USING (country_id)
GROUP BY country;




