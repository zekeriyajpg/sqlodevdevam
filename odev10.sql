/*1. city ve country tablolarýný birleþtirme (LEFT JOIN)
Bu sorgu, tüm þehirleri (city) ve onlarýn ilgili ülkelerini (country) gösterecek. Bir þehir bir ülkeyle eþleþmezse bile, þehir yine de sonuçlarda görünecektir.*/
SELECT city.city, country.country 
FROM city 
LEFT JOIN country 
ON city.country_id = country.country_id;
/*2. customer ve payment tablolarýný birleþtirme (RIGHT JOIN)
Bu sorgu, tüm ödeme kayýtlarýný (payment) ve bunlarla iliþkili müþteri isimlerini gösterecek. Eðer bir ödeme kaydý bir müþteriyle eþleþmiyorsa bile, ödeme kaydý yine de sonuçlarda görünecektir.*/
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM payment
RIGHT JOIN customer
ON payment.customer_id = customer.customer_id;
/*3. customer ve rental tablolarýný birleþtirme (FULL JOIN)
Bu sorgu, hem müþteri kayýtlarýný (customer) hem de kiralama kayýtlarýný (rental) gösterecek. Bir müþteri kaydý bir kiralama kaydýyla eþleþmezse veya tam tersi, her iki kayýt da sonuçlarda yer alacaktýr.*/
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM rental
FULL JOIN customer
ON rental.customer_id = customer.customer_id;