-- ============================================
-- Day 6, Problem 2
-- Topic: COUNT(*) vs COUNT(column), LEFT JOIN
-- Difficulty: Medium
-- Date: 2026-03-31
-- ============================================

-- PROBLEM:
-- For each director, show:
--   (a) total number of movies they directed
--   (b) how many of those movies are MISSING box office data
-- Return: director, num_movies, num_missing.
-- Sort by num_missing descending, then director ascending.

-- MY APPROACH:
-- 1. LEFT JOIN to keep ALL movies (including those with no box office)
-- 2. GROUP BY director
-- 3. COUNT(*) = total movies in the group
-- 4. COUNT(box_office.movie_id) = only non-NULL matches
-- 5. Difference = missing count

-- SOLUTION:
SELECT director, count(*) AS num_movies, COUNT(*) - COUNT(box_office.movie_id) AS num_missing
FROM movies
LEFT JOIN box_office ON movies.id = box_office.movie_id
GROUP BY director
ORDER BY num_missing DESC, director ASC;

-- WHAT I LEARNED:
-- COUNT(*) counts ALL rows. COUNT(column) counts only non-NULL values.
-- The difference between them tells you how many NULLs there are.
-- This is the COUNT(*) - COUNT(column) pattern — a clean way to count
-- missing data without needing a CASE expression.
