--Film tablosunda bulunan filmleri rating de�erlerine g�re gruplay�n�z:--
SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating
ORDER BY rating;

--Film tablosunda bulunan filmleri replacement_cost s�tununa g�re gruplad���m�zda film say�s� 50'den fazla olan replacement_cost de�erlerini ve kar��l�k gelen film say�lar�n� s�ralay�n�z:--
SELECT replacement_cost, COUNT(*) AS film_count
FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY film_count DESC;

--'customer' tablosunda bulunan 'store_id' de�erlerine kar��l�k gelen m��teri say�lar�n� nelerdir?--
SELECT store_id, COUNT(*) AS customer_count
FROM customer
GROUP BY store_id
ORDER BY store_id;

--'city' tablosunda bulunan �ehir verilerini 'country_id' s�tununa g�re grupland�rd�ktan sonra en fazla �ehir say�s� bar�nd�ran 'country_id' bilgisini ve �ehir say�s�n� payla��n�z:--
SELECT country_id, COUNT(*) AS city_count
FROM city
GROUP BY country_id
ORDER BY city_count DESC
LIMIT 1;