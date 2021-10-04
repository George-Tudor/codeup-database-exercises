USE codeup_test_db;


SELECT name AS 'The name of all albums by Pink Floyd' FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' FROM albums
WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT genre AS 'The genre for Nevermind' FROM albums
WHERE name = 'Nevermind';

SELECT name AS 'Albums released in the 1990s', release_date AS 'Release date' FROM albums
WHERE release_date BETWEEN 1989 AND 2000;

SELECT name AS 'Albums that had less than 20 million certified sales', sales AS 'sales' FROM albums
WHERE sales < 20;

SELECT name AS 'Albums with a genre of Rock' FROM albums
WHERE genre = 'Rock';