INSERT INTO "SELECT category.name AS category, SUM(amount) AS total_sales
FROM payment
INNER JOIN rental USING(rental_id)
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category ON category.category_id = film_category.category_id
WHERE payment.payment_date >= '2007-01-01 00:00:00' 
 AND  payment.payment_date <  '2008-01-01 00:00:00'
GROUP BY category.name
ORDER BY sum(amount) DESC" (category,total_sales) VALUES
	 ('Sports',4892.19),
	 ('Sci-Fi',4336.01),
	 ('Animation',4245.31),
	 ('Drama',4118.46),
	 ('Comedy',4002.48),
	 ('New',3966.38),
	 ('Action',3951.84),
	 ('Foreign',3934.47),
	 ('Games',3922.18),
	 ('Family',3830.15);
INSERT INTO "SELECT category.name AS category, SUM(amount) AS total_sales
FROM payment
INNER JOIN rental USING(rental_id)
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category ON category.category_id = film_category.category_id
WHERE payment.payment_date >= '2007-01-01 00:00:00' 
 AND  payment.payment_date <  '2008-01-01 00:00:00'
GROUP BY category.name
ORDER BY sum(amount) DESC" (category,total_sales) VALUES
	 ('Documentary',3749.65),
	 ('Horror',3401.27),
	 ('Classics',3353.38),
	 ('Children',3309.39),
	 ('Travel',3227.36),
	 ('Music',3071.52);
