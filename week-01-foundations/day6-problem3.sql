-- ============================================
-- Day 6, Problem 3
-- Topic: AVG with expression, HAVING
-- Difficulty: Medium
-- Date: 2026-03-31
-- ============================================

-- PROBLEM:
-- For directors with more than 1 movie (that has box office data),
-- compute their average international-to-domestic percentage —
-- how much international sales exceed domestic as a percentage.
-- Formula per movie: (international - domestic) * 100.0 / domestic
-- Return: director, num_movies, international_to_domestic_percentage
-- (rounded to 1 decimal). Sort by percentage descending.

-- MY APPROACH:
-- 1. INNER JOIN movies + box_office (need sales data)
-- 2. GROUP BY director
-- 3. AVG of the per-movie expression
-- 4. HAVING count(*) > 1 to filter to multi-movie directors
-- 5. ROUND and ORDER BY

-- SOLUTION:
SELECT
    director,
    count(*) AS num_movies,
    ROUND(AVG((international_sales - domestic_sales) * 100.0 / domestic_sales), 1) AS international_to_domestic_percentage
FROM movies
INNER JOIN box_office ON movies.id = box_office.movie_id
GROUP BY director
HAVING count(*) > 1
ORDER BY international_to_domestic_percentage DESC;

-- WHAT I LEARNED:
-- You can put a full arithmetic expression INSIDE AVG(). The database
-- computes the expression for each row first, then averages the results.
-- Combined with HAVING to filter groups — this stacks multiple concepts
-- (expressions + aggregates + group filtering) in one query.
