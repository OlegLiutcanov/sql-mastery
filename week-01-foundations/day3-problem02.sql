-- ============================================
-- Day 3, Problem 2
-- Topic: LEFT JOIN + IS NULL (finding missing data)
-- Difficulty: Easy
-- Date: 2026-03-29
-- ============================================

-- PROBLEM:
-- Find movies that have NO box office data at all. Return just the title.

-- MY APPROACH:
-- 1. LEFT JOIN to keep all movies
-- 2. Filter WHERE the join column IS NULL (no match found)
-- 3. Return only the title

-- SOLUTION:
SELECT title
FROM movies
LEFT JOIN box_office ON movies.id = box_office.movie_id
WHERE rating IS NULL;

-- WHAT I LEARNED:
-- LEFT JOIN + WHERE ... IS NULL is the pattern for finding "rows with no match."
-- This is a very common interview pattern. Could also check box_office.movie_id IS NULL
-- instead of rating — any column from the right table works.
