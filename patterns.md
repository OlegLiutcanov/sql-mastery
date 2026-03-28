# SQL Patterns

> Reusable patterns I keep seeing across problems. This is my cheat sheet.

## Pattern: Top N Per Group
```sql
-- "Find the top 3 highest-paid employees per department"
-- Use ROW_NUMBER() + CTE (learn this in Week 4, but note it here when you see it)
```

## Pattern: Find Duplicates
```sql
SELECT column, COUNT(*)
FROM table
GROUP BY column
HAVING COUNT(*) > 1;
```

## Pattern: Filter After Aggregation
```sql
-- WHERE filters rows BEFORE grouping
-- HAVING filters groups AFTER aggregation
SELECT department, AVG(salary) as avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
```

## Pattern: Running Total
```sql
-- Learn this in Week 4
-- SUM() OVER (ORDER BY date) gives cumulative sum
```

---

*Add new patterns as you discover them. This file should grow every week.*
