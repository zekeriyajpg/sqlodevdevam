/*1. Film tablosunda bulunan rental_rate s�tunundaki de�erlerin ortalamas� nedir?*/

SELECT AVG(rental_rate) AS average_rental_rate
FROM film;

/*2. Film tablosunda bulunan filmlerden ka� tanesi 'C' karakteri ile ba�lar?*/

sql
Kodu kopyala
SELECT COUNT(*) AS count_of_films_starting_with_C
FROM film
WHERE title LIKE 'C%';

/*3. Film tablosunda bulunan filmlerden rental_rate de�eri 0.99'a e�it olan en uzun (length) film ka� dakikad�r?*/


SELECT MAX(length) AS longest_film_length
FROM film
WHERE rental_rate = 0.99;

/*4. Film tablosunda bulunan filmlerin uzunlu�u 150 dakikadan b�y�k olanlar�na ait ka� farkl� replacement_cost de�eri vard�r?*/

SELECT COUNT(DISTINCT replacement_cost) AS distinct_replacement_cost_count
FROM film
WHERE length > 150;