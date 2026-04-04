SELECT 
    director,
    COUNT(*) AS num_movies,
    SUM(CASE WHEN box_office.movie_id IS NULL THEN 1 ELSE 0 END) AS missing_count
FROM movies
LEFT JOIN box_office ON movies.id = box_office.movie_id
GROUP BY director
ORDER BY missing_count DESC, director ASC;


SELECT 
    director,
    COUNT(*) AS num_movies,
    COUNT(*) - COUNT(box_office.movie_id) AS missing_count
FROM movies
LEFT JOIN box_office ON movies.id = box_office.movie_id
GROUP BY director
ORDER BY missing_count DESC, director ASC;
