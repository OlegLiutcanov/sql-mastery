SELECT title
FROM movies
LEFT JOIN box_office ON movies.id = box_office.movie_id
WHERE box_office.movie_id IS NULL;