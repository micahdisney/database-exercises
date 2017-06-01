USE codeup_test_db;



SELECT 'All albums in table' AS '';
SELECT name, sales
FROM albums;

SELECT 'Make all the albums 10 times more popular' AS '';
UPDATE albums
SET sales = sales * 10;

SELECT name, sales
FROM albums;




SELECT 'All albums before 1980' AS '';
SELECT name, release_date
FROM albums
WHERE release_date < 1980;

SELECT 'Move all the albums before 1980 back to the 1800s.' AS '';
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

SELECT name, release_date
FROM albums
WHERE release_date < 1980;




SELECT 'All albums by Michael Jackson' AS '';
SELECT name, artist
FROM albums
WHERE artist = 'Michael Jackson';

SELECT 'Change ''Michael Jackson'' to ''Peter Jackson''' AS '';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT name, artist
FROM albums
WHERE artist = 'Michael Jackson';

