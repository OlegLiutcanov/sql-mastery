-- ============================================
-- Day 6, Problem 1
-- Topic: Expression inside aggregate (AVG)
-- Difficulty: Easy-Medium
-- Date: 2026-03-31
-- ============================================

-- PROBLEM:
-- For each movie, compute international sales as a percentage of total
-- sales. Return title and international_percentage (rounded to 1 decimal),
-- sorted by international_percentage descending.

-- MY APPROACH:
-- 1. JOIN movies + box_office
-- 2. Compute: international * 1.0 / (domestic + international) * 100
-- 3. ROUND to 1 decimal
-- 4. ORDER BY percentage DESC

-- SOLUTION:
SELECT title, ROUND(international_sales * 1.0 / (domestic_sales + international_sales) * 100, 1) AS international_percentage
FROM movies
INNER JOIN box_office ON movies.id = box_office.movie_id
ORDER BY international_percentage DESC;

-- WHAT I LEARNED:
-- This is a per-row calculation (each movie gets its own percentage).
-- The expression runs inside SELECT for every row individually. Compare
-- this to putting an expression inside AVG() which computes per-row first,
-- then averages across all rows.
