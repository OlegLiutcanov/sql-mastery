-- ============================================================
-- WEEK 2, DAY 2 — Multi-Table JOINs Practice
-- SQL Mastery | Oleg Liutcanov
-- Date: 2026-04-05
-- Database: multi_joins_practice.db
-- ============================================================

-- SCHEMA REFERENCE (run these to see your data)
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;
SELECT * FROM reviews;

-- PROBLEM 1: Customer Order Summary (2 tables)
-- List every customer with their order dates and statuses.
-- Include customers who have never placed an order.
-- Columns: customer_name, city, order_date, status
-- Sort by customer_name, then order_date.
-- Expected: Hank Miller has no orders — should still appear.
-- YOUR SOLUTION:



-- PROBLEM 2: What Did Each Customer Buy? (4 tables)
-- Show every customer alongside the product names and
-- quantities they ordered.
-- Columns: customer_name, product_name, quantity, unit_price
-- Sort by customer_name, then product_name.
-- Chain: customers -> orders -> order_items -> products
-- YOUR SOLUTION:



-- PROBLEM 3: Revenue Per Customer (3 tables + aggregation)
-- Calculate total amount each customer has spent.
-- Total = SUM(quantity * unit_price) across all their orders.
-- Columns: customer_name, total_spent
-- Sort by total_spent DESC. Only customers with orders.
-- YOUR SOLUTION:



-- PROBLEM 4: Product Performance Report (3 tables + aggregation)
-- For each product show: times_ordered (count of order_items rows),
-- total_qty_sold (sum of quantity), avg_rating (from reviews).
-- Include products with no reviews (NULL for avg rating).
-- Include products never ordered (0 for times_ordered and qty).
-- Columns: product_name, category, times_ordered, total_qty_sold, avg_rating
-- Sort by total_qty_sold DESC.
-- Hint: careful about which table you start from and LEFT JOIN to.
-- YOUR SOLUTION:



-- PROBLEM 5: Customers Who Reviewed Products They Bought (5 tables)
-- Find customers who wrote a review for a product they actually
-- purchased. Show: customer_name, product_name, rating, review_text.
-- Sort by customer_name, then product_name.
-- Hint: start from reviews, join customers + products, then verify
-- the purchase exists via orders + order_items.
-- YOUR SOLUTION:



-- PROBLEM 6: Unreviewed Purchases (4+ tables)
-- Find all customer-product pairs where the customer bought the
-- product but has NOT written a review for it.
-- Columns: customer_name, product_name
-- Sort by customer_name, then product_name. No duplicates.
-- Hint: get purchased pairs, LEFT JOIN reviews, filter IS NULL.
-- YOUR SOLUTION:

