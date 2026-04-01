-- ============================================
-- Day 4, Problem 1
-- Topic: Expressions, ROUND, JOIN
-- Difficulty: Easy
-- Date: 2026-03-30
-- ============================================

-- PROBLEM:
-- For each movie with box office data, compute domestic sales as a
-- percentage of total sales. Return: title, domestic_sales,
-- international_sales, total_sales, domestic_percentage (rounded to 1 decimal).
-- Sort by total_sales descending.

-- MY APPROACH:
-- 1. JOIN movies + box_office
-- 2. Compute total_sales = domestic + international
-- 3. Compute domestic_pct = domestic * 1.0 / total * 100, ROUND to 1 decimal
-- 4. ORDER BY total_sales DESC

-- SOLUTION:
SELECT
    title,
    domestic_sales,
    international_sales,
    domestic_sales + international_sales AS total_sales,
    ROUND(domestic_sales * 1.0 / (domestic_sales + international_sales) * 100, 1) AS domestic_percentage
FROM movies
INNER JOIN box_office ON movies.id = box_office.movie_id
ORDER BY total_sales DESC;

-- WHAT I LEARNED:
-- Must use 1.0 (or 100.0) to force floating-point division. Without it,
-- SQLite does integer division and you get 0. This is the integer division
-- gotcha — one of the most common SQL mistakes.
