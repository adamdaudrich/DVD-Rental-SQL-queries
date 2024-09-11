SELECT f.title, f.length, c.name AS category
FROM film f
INNER JOIN film_category fc USING (film_id)
INNER JOIN category c USING (category_id)
WHERE c.name = 'Documentary' AND f.length < 60
ORDER BY title
;
