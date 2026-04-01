-- ============================================
-- Day 2, Problem 2
-- Topic: INNER JOIN, WHERE comparison
-- Difficulty: Easy
-- Date: 2026-03-28
-- ============================================

-- PROBLEM:
-- Find movies where international sales exceeded domestic sales.
-- Return the title, domestic_sales, and international_sales.

-- MY APPROACH:
-- 1. Need movies + box_office tables joined on id = movie_id
-- 2. Return title, domestic_sales, international_sales
-- 3. Filter WHERE international > domestic

-- SOLUTION:
SELECT title, domestic_sales, international_sales
FROM movies
JOIN box_office ON movies.id = box_office.movie_id
WHERE international_sales > domestic_sales;

-- WHAT I LEARNED:
-- You can compare two columns directly in WHERE. The JOIN gives us access
-- to columns from both tables, so the comparison just works.
