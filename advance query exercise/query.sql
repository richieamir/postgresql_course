CREATE TABLE authors (
    author_id   INT PRIMARY KEY,
    author_name VARCHAR(100)
);

CREATE TABLE publishers (
    publisher_id   INT PRIMARY KEY,
    publisher_name VARCHAR(100)
);
CREATE TABLE books (
    book_id      INT PRIMARY KEY,
    book_title   VARCHAR(100),
    author_id    INT NULL,
    publisher_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (publisher_id) REFERENCES publishers(publisher_id)
);
INSERT INTO authors (author_id, author_name) VALUES
(1, 'George Orwell'),
(2, 'Haruki Murakami'),
(3, 'J.K. Rowling'),
(4, 'Unknown Author'); -- ini tidak punya buku
INSERT INTO publishers (publisher_id, publisher_name) VALUES
(1, 'Penguin'),
(2, 'HarperCollins'),
(3, 'Gramedia');
INSERT INTO books (book_id, book_title, author_id, publisher_id) VALUES
(1, '1984', 1, 1),
(2, 'Kafka on the Shore', 2, 2),
(3, 'Harry Potter', 3, 1),
(4, 'Anonymous Tales', NULL, 3); -- no author
