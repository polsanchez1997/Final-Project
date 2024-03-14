SELECT * FROM final_project.movies limit 10;

-- 1. Most popular films

SELECT id, title, popularity
FROM movies
ORDER BY popularity DESC
LIMIT 10;

-- 2. Most voted films

SELECT id, title, vote_count
FROM movies
ORDER BY vote_count DESC
LIMIT 10;

-- 3. Key word searcher

SELECT id, title, overview
FROM movies
WHERE overview LIKE '%torrente%';

-- 4. Films per original language

SELECT 
    original_language, COUNT(*) AS total_movies
FROM
    movies
GROUP BY original_language
ORDER BY total_movies DESC;

-- 5. Best films per rating

SELECT id, title, vote_average
FROM movies
ORDER BY vote_average DESC
LIMIT 10;

-- 6. Oldest movies

SELECT id, title, release_date
FROM movies
WHERE release_date IS NOT NULL
ORDER BY release_date
LIMIT 10;

-- 7. High votes, high rating films

SELECT id, title, vote_average, vote_count
FROM movies
WHERE vote_average > 8 AND vote_count > 1000
ORDER BY vote_average DESC, vote_count DESC
LIMIT 10;

-- 8. Average vote per film

SELECT AVG(vote_count) AS average_vote_count
FROM movies
WHERE vote_count IS NOT NULL;

-- 9. Most voted films

SELECT id, title, SUM(vote_count) AS total_votes
FROM movies
GROUP BY id, title
ORDER BY total_votes DESC
LIMIT 10;








