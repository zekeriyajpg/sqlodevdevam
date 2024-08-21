--1. Uzunluðu Ortalama Film Uzunluðundan Fazla Kaç Tane Film Vardýr?
--
WITH avg_length AS (
    SELECT AVG(length) AS average_length
    FROM film
)
-- Ortalama uzunluktan fazla olan film sayýsýný bul
SELECT COUNT(*) AS num_films_above_average
FROM film, avg_length
WHERE length > avg_length.average_length;

--2. En Yüksek Rental Rate Deðerine Sahip Kaç Tane Film Vardýr?--
WITH max_rental_rate AS (
    SELECT MAX(rental_rate) AS highest_rental_rate
    FROM film
)
-- En yüksek rental_rate deðerine sahip film sayýsýný bul
SELECT COUNT(*) AS num_films_with_highest_rate
FROM film, max_rental_rate
WHERE rental_rate = max_rental_rate.highest_rental_rate;

--3. En Düþük Rental Rate ve En Düþük Replacement Cost Deðerlerine Sahip Filmleri Sýralayýn--
WITH min_rental_rate AS (
    SELECT MIN(rental_rate) AS lowest_rental_rate
    FROM film
),
min_replacement_cost AS (
    SELECT MIN(replacement_cost) AS lowest_replacement_cost
    FROM film
)
-- En düþük rental_rate ve replacement_cost deðerlerine sahip filmleri seç
SELECT *
FROM film
WHERE rental_rate = (SELECT lowest_rental_rate FROM min_rental_rate)
  AND replacement_cost = (SELECT lowest_replacement_cost FROM min_replacement_cost);

  --4. En Fazla Sayýda Alýþveriþ Yapan Müþterileri Sýralayýn--
SELECT customer_id, COUNT(*) AS num_purchases
FROM payment
GROUP BY customer_id
ORDER BY num_purchases DESC;