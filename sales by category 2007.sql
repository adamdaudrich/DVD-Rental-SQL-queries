SELECT category.name AS category, SUM(amount) AS total_sales
FROM payment
INNER JOIN rental USING(rental_id)
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category ON category.category_id = film_category.category_id
WHERE payment.payment_date >= '2007-01-01 00:00:00' 
 AND  payment.payment_date <  '2008-01-01 00:00:00'
GROUP BY category.name
ORDER BY sum(amount) DESC
;
