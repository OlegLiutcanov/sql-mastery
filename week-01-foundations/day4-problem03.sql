-- ============================================
-- Day 4, Problem 3
-- Topic: GROUP BY, HAVING, SUM
-- Difficulty: Easy-Medium
-- Date: 2026-03-30
-- ============================================

-- PROBLEM:
-- Find directors whose movies have earned more than $500 million in
-- total worldwide sales (domestic + international combined across all
-- their movies). Return director and total_worldwide, sorted descending.

-- MY APPROACH:
-- 1. JOIN movies + box_office
-- 2. GROUP BY director
-- 3. SUM(domestic + international) for total worldwide per director
-- 4. HAVING to filter groups over $500M
-- 5. ORDER BY total_worldwide DESC

-- SOLUTION:
SELECT
    director,
    SUM(domestic_sales + international_sales) AS total_worldwide
FROM movies
INNER JOIN box_office ON movies.id = box_office.movie_id
GROUP BY director
HAVING total_worldwide > 500000000
ORDER BY total_worldwide DESC;

-- WHAT I LEARNED:
-- HAVING filters groups AFTER GROUP BY (unlike WHERE which filters rows
-- BEFORE grouping). You need HAVING whenever your filter condition involves
-- an aggregate like SUM, AVG, COUNT. Can't use WHERE for this because
-- WHERE runs before the groups even exist.
