--INNER
SELECT p.name AS product_name, o.quantity, o.total_amount
FROM products p
INNER JOIN orders o ON p.product_id = o.product_id;


--LEFT
SELECT p.name AS product_name, o.quantity, o.total_amount
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id;


--RIGHT
SELECT p.name AS product_name, o.quantity, o.total_amount
FROM products p
RIGHT JOIN orders o ON p.product_id = o.product_id;

--OUTER
SELECT p.name AS product_name, o.quantity, o.total_amount
FROM products p
FULL OUTER JOIN orders o ON p.product_id = o.product_id;
