-- Create the accounts table
CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    balance NUMERIC(10, 2)
);

-- Insert some sample data into the accounts table
INSERT INTO accounts (name, balance) VALUES ('Alice', 1000.00);
INSERT INTO accounts (name, balance) VALUES ('Bob', 2000.00);
INSERT INTO accounts (name, balance) VALUES ('Charlie', 1500.00);
