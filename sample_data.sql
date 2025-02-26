-- Insert sample movies
INSERT INTO movies (movieId, title, genres) VALUES
(1, 'Toy Story (1995)', 'Adventure|Animation|Children|Comedy|Fantasy'),
(2, 'Jumanji (1995)', 'Adventure|Children|Fantasy'),
(3, 'Grumpier Old Men (1995)', 'Comedy|Romance');

-- Insert sample ratings
INSERT INTO ratings (userId, movieId, rating, timestamp) VALUES
(1, 1, 4.0, 964982703),
(1, 2, 3.5, 964981247),
(2, 1, 5.0, 964982703);

-- Insert sample links (optional)
INSERT INTO links (movieId, imdbId, tmdbId) VALUES
(1, 'tt0114709', '862'),
(2, 'tt0113497', '8844');

-- Insert sample tags (optional)
INSERT INTO tags (userId, movieId, tag, timestamp) VALUES
(1, 1, 'funny', 964982703),
(2, 1, 'classic', 964981247);