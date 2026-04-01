-- ============================================
-- Day 1, Problem 2
-- Topic: SELECT, WHERE, BETWEEN, ORDER BY
-- Difficulty: Easy
-- Date: 2026-03-28
-- ============================================

-- PROBLEM:
-- Find all movies released between 2000 and 2010 (inclusive).
-- Return the title and year, sorted by year ascending.

-- MY APPROACH:
-- 1. Need the movies table
-- 2. Return title and year
-- 3. Filter with BETWEEN for the year range
-- 4. Sort by year ascending (default)

-- SOLUTION:
SELECT title, year
FROM movies
WHERE year BETWEEN 2000 AND 2010
ORDER BY year;

-- WHAT I LEARNED:
-- BETWEEN is inclusive on both ends (includes 2000 and 2010).
-- ORDER BY defaults to ASC so you don't need to write it explicitly.
