-- Create the products table
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    price NUMERIC(10, 2),
    version INTEGER
);

-- Insert some sample data into the products table
INSERT INTO products (name, price, version) VALUES ('Product A', 10.99, 1);
INSERT INTO products (name, price, version) VALUES ('Product B', 15.99, 1);