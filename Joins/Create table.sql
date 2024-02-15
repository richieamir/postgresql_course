-- Create products table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    price NUMERIC(10, 2)
);

-- Insert sample data into products table
INSERT INTO products (name, price) VALUES ('Laptop', 1000.00);
INSERT INTO products (name, price) VALUES ('Smartphone', 500.00);
INSERT INTO products (name, price) VALUES ('Headphones', 100.00);

-- Create orders table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    product_id INT,
    quantity INT,
    total_amount NUMERIC(10, 2)
);

-- Insert sample data into orders table
INSERT INTO orders (product_id, quantity, total_amount) VALUES (1, 2, 2000.00);
INSERT INTO orders (product_id, quantity, total_amount) VALUES (2, 3, 1500.00);
INSERT INTO orders (product_id, quantity, total_amount) VALUES (3, 1, 100.00);
