--1. city ve country tablolar�n� birle�tirme--
SELECT city.city, country.country 
FROM city 
INNER JOIN country 
ON city.country_id = country.country_id;
--2. customer ve payment tablolar�n� birle�tirme--
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;
--3. customer ve rental tablolar�n� birle�tirme--
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM rental
INNER JOIN customer
ON rental.customer_id = customer.customer_id;