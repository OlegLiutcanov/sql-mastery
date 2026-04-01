-- ============================================
-- Day 4, Practice
-- Topic: GROUP BY basics (warm-up)
-- Difficulty: Easy
-- Date: 2026-03-30
-- ============================================

-- PROBLEM:
-- Count how many movies each director has made. Return director and count.

-- MY APPROACH:
-- 1. Need movies table only
-- 2. GROUP BY director to make "piles" per director
-- 3. COUNT(*) to count rows in each pile

-- SOLUTION:
SELECT director, COUNT(*) AS num_movies
FROM movies
GROUP BY director;

-- WHAT I LEARNED:
-- GROUP BY collapses rows into groups. Think of it as making "piles."
-- Every column in SELECT must either be in GROUP BY or inside an aggregate
-- function — this is the "golden rule" of GROUP BY.
