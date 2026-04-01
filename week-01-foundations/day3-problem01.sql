-- ============================================
-- Day 3, Problem 1
-- Topic: LEFT JOIN, NULLs
-- Difficulty: Easy
-- Date: 2026-03-29
-- ============================================

-- PROBLEM:
-- List all movies with their ratings. Movies without box office data
-- should still appear (with NULL for rating).

-- MY APPROACH:
-- 1. Need all rows from movies, even if no match in box_office
-- 2. That means LEFT JOIN (keep everything on the left)
-- 3. Return title and rating

-- SOLUTION:
SELECT title, rating
FROM movies
LEFT JOIN box_office ON movies.id = box_office.movie_id;

-- WHAT I LEARNED:
-- LEFT JOIN keeps ALL rows from the left table (movies). When there's
-- no matching row in box_office, the box_office columns come back as NULL.
-- Inside Out and Coco appear with NULL ratings.
