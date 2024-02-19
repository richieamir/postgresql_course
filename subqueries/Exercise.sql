-- Create Movies table
CREATE TABLE Movies (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    release_year INTEGER,
    genre VARCHAR(50),
    rating VARCHAR(10)
);

-- Create Screenings table
CREATE TABLE Screenings (
    screening_id SERIAL PRIMARY KEY,
    movie_id INTEGER REFERENCES Movies(movie_id),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    theater_id INTEGER
);

-- Create Theaters table
CREATE TABLE Theaters (
    theater_id SERIAL PRIMARY KEY,
    seat_capacity INTEGER
);

-- Create Tickets table
CREATE TABLE Tickets (
    ticket_id SERIAL PRIMARY KEY,
    screening_id INTEGER REFERENCES Screenings(screening_id),
    seat_number VARCHAR(10),
    price NUMERIC(10, 2),
    customer_id INTEGER
);

-- Insert dummy data into Movies table
INSERT INTO Movies (title, release_year, genre, rating) VALUES
('The Shawshank Redemption', 1994, 'Drama', 'R'),
('The Godfather', 1972, 'Crime', 'R'),
('The Dark Knight', 2008, 'Action', 'PG-13'),
('Pulp Fiction', 1994, 'Crime', 'R'),
('Schindler''s List', 1993, 'Biography', 'R');

-- Insert dummy data into Theaters table
INSERT INTO Theaters (seat_capacity) VALUES
(120), (80), (150), (200), (90);

-- Insert dummy data into Screenings table
INSERT INTO Screenings (movie_id, start_time, end_time, theater_id) VALUES
(1, '2024-02-15 18:00:00', '2024-02-15 21:00:00', 1),
(2, '2024-02-16 19:00:00', '2024-02-16 22:00:00', 2),
(3, '2024-02-17 20:00:00', '2024-02-17 23:00:00', 3),
(4, '2024-02-18 21:00:00', '2024-02-18 23:30:00', 4),
(5, '2024-02-19 18:30:00', '2024-02-19 21:30:00', 5);

-- Insert dummy data into Tickets table
INSERT INTO Tickets (screening_id, seat_number, price, customer_id) VALUES
(1, 'A1', 15.00, 101),
(2, 'B3', 12.50, 102),
(3, 'C5', 14.00, 103),
(4, 'D2', 13.50, 104),
(5, 'E4', 11.00, 105);
