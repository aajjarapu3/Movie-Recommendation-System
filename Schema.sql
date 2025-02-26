CREATE DATABASE movie_recommendation;
USE movie_recommendation;

CREATE TABLE movies (
    movieId INT PRIMARY KEY,
    title VARCHAR(255),
    genres VARCHAR(255)
);

CREATE TABLE ratings (
    userId INT,
    movieId INT,
    rating FLOAT,
    timestamp BIGINT,
    FOREIGN KEY (movieId) REFERENCES movies(movieId)
);