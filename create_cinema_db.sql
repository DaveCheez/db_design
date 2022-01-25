DROP SCHEMA cinema;
CREATE DATABASE cinema;
USE cinema;

CREATE TABLE movies(
	movie_id INT AUTO_INCREMENT,
	PRIMARY KEY (movie_id),
	name VARCHAR(30) UNIQUE NOT NULL,
    time_added DATETIME DEFAULT now()
);

INSERT INTO movies (name) VALUES ('Kate');
INSERT INTO movies (name) VALUES ('Seven');
DESCRIBE movies;

CREATE TABLE rating(
	rating_id INT AUTO_INCREMENT,
	PRIMARY KEY (rating_id),
    movie_id INT,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
	name VARCHAR(10) UNIQUE NOT NULL
);

DESCRIBE rating;

CREATE TABLE genre(
    genre_id INT AUTO_INCREMENT,
	PRIMARY KEY (genre_id),
    rating_id INT,
	movie_id INT,
    FOREIGN KEY (rating_id) REFERENCES rating(rating_id),
	FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    name VARCHAR(10) UNIQUE NOT NULL
);

DESCRIBE genre;

CREATE TABLE viewers (
viewer_id INT AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(30),
email VARCHAR(40),
new_customer BOOLEAN);

# Foreign Key - Primary key of another table

CREATE TABLE bookings (
booking_id INT AUTO_INCREMENT PRIMARY KEY,
viewer_id INT,
movie_id INT,
FOREIGN KEY (viewer_id) REFERENCES viewers(viewer_id),
FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);
