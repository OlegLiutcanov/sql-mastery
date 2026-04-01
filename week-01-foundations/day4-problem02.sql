-- ============================================
-- Day 4, Problem 2
-- Topic: GROUP BY, AVG, COUNT
-- Difficulty: Easy
-- Date: 2026-03-30
-- ============================================

-- PROBLEM:
-- For each director, show the number of movies that have ratings and
-- their average rating (rounded to 1 decimal). Sort by average rating
-- descending.

-- MY APPROACH:
-- 1. JOIN movies + box_office (only movies with ratings)
-- 2. GROUP BY director
-- 3. COUNT(*) for movie count, AVG(rating) for average
-- 4. ROUND the average, ORDER BY DESC

-- SOLUTION:
SELECT
    director,
    COUNT(*) AS movie_count,
    SUM(rating) AS total_rating,
    ROUND(AVG(rating), 1) AS average_rating
FROM movies
INNER JOIN box_office ON movies.id = box_office.movie_id
GROUP BY director
ORDER BY average_rating DESC;

-- WHAT I LEARNED:
-- AVG() automatically ignores NULLs. INNER JOIN here means we only count
-- movies that actually have box office data. SUM(rating) included as a
-- sanity check — you can verify AVG = SUM / COUNT manually.
