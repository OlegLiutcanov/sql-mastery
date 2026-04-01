-- ============================================
-- Day 2, Problem 3
-- Topic: INNER JOIN, ORDER BY DESC, LIMIT
-- Difficulty: Easy
-- Date: 2026-03-28
-- ============================================

-- PROBLEM:
-- Find the top 3 highest-rated movies. Return the title and rating,
-- sorted by rating descending.

-- MY APPROACH:
-- 1. Need movies + box_office tables (rating lives in box_office)
-- 2. Return title and rating
-- 3. Sort by rating DESC, then LIMIT 3

-- SOLUTION:
SELECT title, rating
FROM movies
INNER JOIN box_office ON movies.id = box_office.movie_id
ORDER BY rating DESC LIMIT 3;

-- WHAT I LEARNED:
-- ORDER BY DESC + LIMIT N is the pattern for "top N" questions.
-- INNER JOIN here is fine because we only want movies that HAVE ratings.
