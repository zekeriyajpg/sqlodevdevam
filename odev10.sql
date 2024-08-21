/*1. city ve country tablolar�n� birle�tirme (LEFT JOIN)
Bu sorgu, t�m �ehirleri (city) ve onlar�n ilgili �lkelerini (country) g�sterecek. Bir �ehir bir �lkeyle e�le�mezse bile, �ehir yine de sonu�larda g�r�necektir.*/
SELECT city.city, country.country 
FROM city 
LEFT JOIN country 
ON city.country_id = country.country_id;
/*2. customer ve payment tablolar�n� birle�tirme (RIGHT JOIN)
Bu sorgu, t�m �deme kay�tlar�n� (payment) ve bunlarla ili�kili m��teri isimlerini g�sterecek. E�er bir �deme kayd� bir m��teriyle e�le�miyorsa bile, �deme kayd� yine de sonu�larda g�r�necektir.*/
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM payment
RIGHT JOIN customer
ON payment.customer_id = customer.customer_id;
/*3. customer ve rental tablolar�n� birle�tirme (FULL JOIN)
Bu sorgu, hem m��teri kay�tlar�n� (customer) hem de kiralama kay�tlar�n� (rental) g�sterecek. Bir m��teri kayd� bir kiralama kayd�yla e�le�mezse veya tam tersi, her iki kay�t da sonu�larda yer alacakt�r.*/
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM rental
FULL JOIN customer
ON rental.customer_id = customer.customer_id;