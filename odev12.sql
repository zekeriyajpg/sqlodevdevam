--1. Uzunlu�u Ortalama Film Uzunlu�undan Fazla Ka� Tane Film Vard�r?
--
WITH avg_length AS (
    SELECT AVG(length) AS average_length
    FROM film
)
-- Ortalama uzunluktan fazla olan film say�s�n� bul
SELECT COUNT(*) AS num_films_above_average
FROM film, avg_length
WHERE length > avg_length.average_length;

--2. En Y�ksek Rental Rate De�erine Sahip Ka� Tane Film Vard�r?--
WITH max_rental_rate AS (
    SELECT MAX(rental_rate) AS highest_rental_rate
    FROM film
)
-- En y�ksek rental_rate de�erine sahip film say�s�n� bul
SELECT COUNT(*) AS num_films_with_highest_rate
FROM film, max_rental_rate
WHERE rental_rate = max_rental_rate.highest_rental_rate;

--3. En D���k Rental Rate ve En D���k Replacement Cost De�erlerine Sahip Filmleri S�ralay�n--
WITH min_rental_rate AS (
    SELECT MIN(rental_rate) AS lowest_rental_rate
    FROM film
),
min_replacement_cost AS (
    SELECT MIN(replacement_cost) AS lowest_replacement_cost
    FROM film
)
-- En d���k rental_rate ve replacement_cost de�erlerine sahip filmleri se�
SELECT *
FROM film
WHERE rental_rate = (SELECT lowest_rental_rate FROM min_rental_rate)
  AND replacement_cost = (SELECT lowest_replacement_cost FROM min_replacement_cost);

  --4. En Fazla Say�da Al��veri� Yapan M��terileri S�ralay�n--
SELECT customer_id, COUNT(*) AS num_purchases
FROM payment
GROUP BY customer_id
ORDER BY num_purchases DESC;