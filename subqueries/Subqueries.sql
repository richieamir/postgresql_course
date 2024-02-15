--single row subquery
SELECT employee_name as manager_name FROM employees WHERE employee_id = (SELECT manager_id FROM employees WHERE employee_name = 'Bob');

--multirow subquery
SELECT product_name FROM products WHERE category_id IN (SELECT category_id FROM categories WHERE category_name = 'Electronics');

--correlated subquery
SELECT customer_name FROM customers WHERE total_orders > (SELECT AVG(total_orders) FROM customers);


