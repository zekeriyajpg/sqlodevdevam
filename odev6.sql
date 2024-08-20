/*1. Film tablosunda bulunan rental_rate sütunundaki deðerlerin ortalamasý nedir?*/

SELECT AVG(rental_rate) AS average_rental_rate
FROM film;

/*2. Film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile baþlar?*/

sql
Kodu kopyala
SELECT COUNT(*) AS count_of_films_starting_with_C
FROM film
WHERE title LIKE 'C%';

/*3. Film tablosunda bulunan filmlerden rental_rate deðeri 0.99'a eþit olan en uzun (length) film kaç dakikadýr?*/


SELECT MAX(length) AS longest_film_length
FROM film
WHERE rental_rate = 0.99;

/*4. Film tablosunda bulunan filmlerin uzunluðu 150 dakikadan büyük olanlarýna ait kaç farklý replacement_cost deðeri vardýr?*/

SELECT COUNT(DISTINCT replacement_cost) AS distinct_replacement_cost_count
FROM film
WHERE length > 150;