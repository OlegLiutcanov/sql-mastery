-- ============================================
-- Day 1, Problem 1
-- Topic: SELECT, WHERE, LIKE
-- Difficulty: Easy
-- Date: 2026-03-28
-- ============================================

-- PROBLEM:
-- Find all movies directed by John Lasseter. Return the title and year.

-- MY APPROACH:
-- 1. Need the movies table
-- 2. Return title and year
-- 3. Filter by director using LIKE pattern match

-- SOLUTION:
SELECT title, year FROM movies WHERE director LIKE '%Lasseter%';

-- WHAT I LEARNED:
-- LIKE with % wildcards for partial text matching. '%Lasseter%' matches
-- any director name containing "Lasseter" anywhere in the string.
