-- Query 1: Top 10 highest-rated movies
SELECT m.title, AVG(r.rating) AS avg_rating
FROM movies m
JOIN ratings r ON m.movieId = r.movieId
GROUP BY m.title
ORDER BY avg_rating DESC
LIMIT 10;

-- Query 2: Most popular genres
SELECT genres, COUNT(*) AS movie_count
FROM movies
GROUP BY genres
ORDER BY movie_count DESC;

-- Query 3: Movies rated highly by a specific user (e.g., userId = 1)
SELECT m.title, m.genres, r.rating
FROM movies m
JOIN ratings r ON m.movieId = r.movieId
WHERE r.userId = 1 AND r.rating >= 4.0;

-- Query 4: Find similar users (e.g., users who rated the same movies as userId = 1)
SELECT r2.userId, COUNT(*) AS common_movies
FROM ratings r1
JOIN ratings r2 ON r1.movieId = r2.movieId
WHERE r1.userId = 1 AND r2.userId != 1
GROUP BY r2.userId
ORDER BY common_movies DESC
LIMIT 5;

-- Query 5: Average rating by genre
SELECT m.genres, AVG(r.rating) AS avg_rating
FROM movies m
JOIN ratings r ON m.movieId = r.movieId
GROUP BY m.genres
ORDER BY avg_rating DESC;

-- Query 6: Top 5 users who rated the most movies
SELECT userId, COUNT(*) AS num_ratings
FROM ratings
GROUP BY userId
ORDER BY num_ratings DESC
LIMIT 5;

-- Query 7: Movies with the most ratings
SELECT m.title, COUNT(*) AS num_ratings
FROM movies m
JOIN ratings r ON m.movieId = r.movieId
GROUP BY m.title
ORDER BY num_ratings DESC
LIMIT 10;

-- Query 8: Find movies with no ratings
SELECT m.title
FROM movies m
LEFT JOIN ratings r ON m.movieId = r.movieId
WHERE r.rating IS NULL;