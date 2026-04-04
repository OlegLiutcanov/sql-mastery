SELECT director, SUM(domestic_sales + international_sales) AS total_worldwide
FROM movies
LEFT JOIN box_office ON movies.id = box_office.movie_id
GROUP BY director
HAVING total_worldwide > 500000000
ORDER BY total_worldwide DESC;