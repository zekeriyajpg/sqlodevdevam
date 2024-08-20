--Film tablosunda bulunan filmleri rating deðerlerine göre gruplayýnýz:--
SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating
ORDER BY rating;

--Film tablosunda bulunan filmleri replacement_cost sütununa göre grupladýðýmýzda film sayýsý 50'den fazla olan replacement_cost deðerlerini ve karþýlýk gelen film sayýlarýný sýralayýnýz:--
SELECT replacement_cost, COUNT(*) AS film_count
FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY film_count DESC;

--'customer' tablosunda bulunan 'store_id' deðerlerine karþýlýk gelen müþteri sayýlarýný nelerdir?--
SELECT store_id, COUNT(*) AS customer_count
FROM customer
GROUP BY store_id
ORDER BY store_id;

--'city' tablosunda bulunan þehir verilerini 'country_id' sütununa göre gruplandýrdýktan sonra en fazla þehir sayýsý barýndýran 'country_id' bilgisini ve þehir sayýsýný paylaþýnýz:--
SELECT country_id, COUNT(*) AS city_count
FROM city
GROUP BY country_id
ORDER BY city_count DESC
LIMIT 1;