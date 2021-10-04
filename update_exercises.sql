USE codeup_test_db;

SELECT name AS 'All albums in the table', sales AS 'Sales' FROM albums;

UPDATE albums
SET sales = (sales * 10);

SELECT name AS 'All albums in the table', sales AS 'Sales' FROM albums;

SELECT name AS 'All albums in the table', release_date AS 'Release Date' FROM albums
WHERE release_date < 1980;

UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;

SELECT name AS 'All albums in the table', release_date AS 'Release Date' FROM albums
WHERE release_date < 1900;

SELECT name AS 'All albums by Michael Jackson' FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT name AS 'All albums by Peter Jackson' FROM albums
WHERE artist = 'Peter Jackson';



