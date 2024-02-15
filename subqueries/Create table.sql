-- Create employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    manager_id INT
);

-- Insert sample data into employees table
INSERT INTO employees (employee_name, manager_id) VALUES ('John Doe', 1);
INSERT INTO employees (employee_name, manager_id) VALUES ('Alice', 1);
INSERT INTO employees (employee_name, manager_id) VALUES ('Bob', 2);
INSERT INTO employees (employee_name, manager_id) VALUES ('Charlie', 3);

-- Create products table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT
);

-- Insert sample data into products table
INSERT INTO products (product_name, category_id) VALUES ('Laptop', 1);
INSERT INTO products (product_name, category_id) VALUES ('Smartphone', 1);
INSERT INTO products (product_name, category_id) VALUES ('Headphones', 2);

-- Create categories table
CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100)
);

-- Insert sample data into categories table
INSERT INTO categories (category_name) VALUES ('Electronics');
INSERT INTO categories (category_name) VALUES ('Accessories');

-- Create customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    total_orders INT
);

-- Insert sample data into customers table
INSERT INTO customers (customer_name, total_orders) VALUES ('Alice', 5);
INSERT INTO customers (customer_name, total_orders) VALUES ('Bob', 10);
INSERT INTO customers (customer_name, total_orders) VALUES ('Charlie', 7);
