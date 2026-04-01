-- ============================================
-- Day 2, Problem 1
-- Topic: ORDER BY, LIMIT
-- Difficulty: Easy
-- Date: 2026-03-28
-- ============================================

-- PROBLEM:
-- Find the longest movie. Return the title and how long it is.

-- MY APPROACH:
-- 1. Need the movies table
-- 2. Return title and length_minutes
-- 3. Sort by length descending, take the first row

-- SOLUTION:
SELECT title, length_minutes
FROM movies
ORDER BY length_minutes DESC LIMIT 1;

-- WHAT I LEARNED:
-- ORDER BY DESC + LIMIT 1 is the pattern for finding the "most" of something