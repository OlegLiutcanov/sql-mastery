-- ============================================
-- Day 3, Problem 3
-- Topic: LEFT JOIN, COALESCE
-- Difficulty: Easy
-- Date: 2026-03-29
-- ============================================

-- PROBLEM:
-- Show total sales (domestic + international) for every movie.
-- Movies with no box office data should show 0 instead of NULL.

-- MY APPROACH:
-- 1. LEFT JOIN to include all movies
-- 2. Use COALESCE to replace NULLs with 0 before adding
-- 3. Return title and computed total_sales

-- SOLUTION:
SELECT title, COALESCE(domestic_sales, 0) + COALESCE(international_sales, 0) AS total_sales
FROM movies
LEFT JOIN box_office ON movies.id = box_office.movie_id;

-- WHAT I LEARNED:
-- COALESCE(column, default) returns the first non-NULL value. Without it,
-- NULL + 0 = NULL (NULL is contagious in arithmetic). Must wrap EACH column
-- separately before adding, not COALESCE the sum.
