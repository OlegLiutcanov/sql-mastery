-- ============================================================
-- WEEK 2, DAY 1 — SELF JOINs Practice
-- SQL Mastery | Oleg Liutcanov
-- Date: 2026-04-04
-- Database: self_joins_practice.db
-- ============================================================


-- SCHEMA REFERENCE (run these to see your data)
SELECT * FROM employees;
SELECT * FROM students;
SELECT * FROM flights;


-- WARM-UP 1: Basic employee-manager lookup
SELECT
    e.name AS employee,
    m.name AS manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.id
ORDER BY e.id;

-- WARM-UP 2: Finding pairs in the same department
SELECT
    a.name AS employee_1,
    b.name AS employee_2,
    a.department
FROM employees a
JOIN employees b
    ON a.department = b.department
    AND a.id < b.id
ORDER BY a.department, a.name;


-- ============================================================
-- PROBLEMS — solve at least 2 today
-- ============================================================


-- PROBLEM 1: Employee-Manager Report (Hierarchy)
-- Difficulty: Starter
--
-- List every employee with their manager's name and the
-- manager's department. Include employees with no manager.
-- Columns: employee_name, manager_name, manager_department
-- Sort by employee name.
-- Expected: 16 rows
-- YOUR SOLUTION:



-- PROBLEM 2: Who Earns More Than Their Manager? (Hierarchy + Filter)
-- Difficulty: Core
--
-- Find employees whose salary is higher than their manager's.
-- Show: employee name, their salary, manager name, manager salary.
-- Sort by salary difference (biggest gap first).
-- YOUR SOLUTION:



-- PROBLEM 3: Colleagues in the Same City (Pair Finding)
-- Difficulty: Core
--
-- Find all pairs of employees in the SAME city but DIFFERENT
-- departments. Columns: employee_1, dept_1, employee_2, dept_2, city
-- No duplicate pairs. Sort by city, then employee_1.
-- YOUR SOLUTION:



-- PROBLEM 4: Students Who Outperform Coursemates (Comparison)
-- Difficulty: Core
--
-- For each student, find others in the SAME course with a LOWER
-- grade. Show: student_name, student_grade, lower_student_name,
-- lower_student_grade, course. Sort by course, student_grade DESC.
-- YOUR SOLUTION:



-- PROBLEM 5: Round-Trip Flights (Route Matching)
-- Difficulty: Challenge
--
-- Find all round-trip combos: a flight A->B paired with a
-- return flight B->A. Show: outbound_flight, outbound_route
-- (as "London -> Paris"), return_flight, return_route, total_price.
-- Sort by total price. Hint: use || for concatenation.
-- YOUR SOLUTION:



-- PROBLEM 6: Management Chain (3-Level Hierarchy)
-- Difficulty: Challenge
--
-- For employees who have a manager, show:
-- employee_name, manager_name, grandmanager_name
-- If the manager has no manager above, grandmanager is NULL.
-- Sort by employee name.
-- Hint: THREE copies of the employees table.
-- YOUR SOLUTION:


