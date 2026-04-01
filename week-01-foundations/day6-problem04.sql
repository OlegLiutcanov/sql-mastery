-- ============================================
-- Day 6, Problem 4
-- Topic: LEFT JOIN + HAVING for data completeness
-- Difficulty: Medium
-- Date: 2026-03-31
-- ============================================

-- PROBLEM:
-- Show a full director summary (num_movies, total_worldwide_sales,
-- avg_rating, intl_percentage), but ONLY for directors where every
-- single movie has box office data (no gaps).
-- Sort by total_worldwide_sales descending.

-- MY APPROACH:
-- 1. LEFT JOIN to see ALL movies (including missing box office)
-- 2. GROUP BY director
-- 3. HAVING COUNT(*) = COUNT(box_office.movie_id) — ensures no NULLs,
--    meaning every movie in the group has a match
-- 4. Compute aggregates: COUNT, SUM(total sales), AVG(rating),
--    international percentage using SUM-level calculation

-- SOLUTION:
SELECT
    director,
    COUNT(*) AS num_movies,
    SUM(domestic_sales + international_sales) AS total_worldwide_sales,
    ROUND(AVG(rating), 1) AS avg_rating,
    ROUND(SUM(international_sales) * 100.0 / SUM(domestic_sales + international_sales), 1) AS intl_percentage
FROM movies
LEFT JOIN box_office ON movies.id = box_office.movie_id
GROUP BY director
HAVING COUNT(*) = COUNT(box_office.movie_id)
ORDER BY total_worldwide_sales DESC;

-- WHAT I LEARNED:
-- HAVING COUNT(*) = COUNT(join_column) is the pattern for "only groups
-- with complete data." COUNT(*) counts all rows, COUNT(join_column) counts
-- only matched rows. If they're equal, every row had a match — no gaps.
-- Pete Docter and Lee Unkrich get filtered out because they each have
-- a movie (Inside Out / Coco) with no box office data.
-- Also: computing intl_percentage at the SUM level (SUM(intl) / SUM(total))
-- gives the weighted average across all movies, not AVG of per-movie percentages.
