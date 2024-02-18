CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    author_name VARCHAR(100)
);

CREATE TABLE publishers (
    publisher_id SERIAL PRIMARY KEY,
    publisher_name VARCHAR(100)
);

CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    book_title VARCHAR(255),
    author_id INT,
    publisher_id INT,
    publication_year INT,
    FOREIGN KEY (author_id) REFERENCES authors (author_id),
    FOREIGN KEY (publisher_id) REFERENCES publishers (publisher_id)
);

INSERT INTO authors (author_name) VALUES
('Stephen King'),
('J.K. Rowling'),
('Harper Lee'),
('Nicholas Sparks'),
('Robert Kiyosaki'),
('John Ronald Reuel Tolkien');

INSERT INTO publishers (publisher_name) VALUES
('Penguin Random House'),
('HarperCollins'),
('Simon & Schuster');

INSERT INTO books (book_title, author_id, publisher_id, publication_year) VALUES
('Harry Potter and the Philosopher''s Stone', 2, 2, 1997),
('To Kill a Mockingbird', 3, 3, 1960),
('The Shining', 1, 1, 1977);
