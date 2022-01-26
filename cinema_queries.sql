USE cinema;

DESCRIBE movies;
DESCRIBE rating;
DESCRIBE genre;

INSERT INTO movies (name) VALUES ('Kate');
INSERT INTO movies (name) VALUES ('Seven');
INSERT INTO movies (name) VALUES ('Dolittle');
INSERT INTO movies (name) VALUES ('Salt');

INSERT INTO genre (name) VALUES ('Action');
INSERT INTO genre (name) VALUES ('Comedy');
INSERT INTO genre (name) VALUES ('Mystery');
INSERT INTO genre (name) VALUES ('Thriller');

INSERT INTO rating (name) VALUES ('Action');
INSERT INTO rating (name) VALUES ('Comedy');
INSERT INTO rating (name) VALUES ('Mystery');
INSERT INTO rating (name) VALUES ('Thriller');


SELECT * FROM movies;
SELECT * FROM genre;
SELECT * FROM rating;
SELECT * FROM viewers;
