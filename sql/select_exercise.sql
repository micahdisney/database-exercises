USE codeup_test_db;


SELECT 'The name of all albums by Pink Floyd.' AS '';
SELECT name
FROM albums
WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' as '';
SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre fom Nevermind' as '';
SELECT  genre
FROM albums
WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' as '';
SELECT  name
FROM albums
WHERE release_date between 1990 and 1999;

SELECT 'Which albums had less than 20 million certified sales' as '';
SELECT  name
FROM albums
WHERE sales < 20;

SELECT 'All the albums in the rock genre.' as '';
SELECT genre
FROM albums
WHERE genre like '%Rock%';



