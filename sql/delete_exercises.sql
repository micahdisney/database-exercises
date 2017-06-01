USE codeup_test_db;



# SELECT 'Albums Released after 1991' AS '';
# SELECT *
# FROM albums
# WHERE release_date > 1991;
#
# SELECT 'Albums with the genre ''pop''' AS '';
# SELECT *
# FROM albums
# WHERE genre LIKE '%pop%';
#
# SELECT 'Albums by ''Michael Jackson''' AS '';
# SELECT *
# FROM albums
# WHERE artist = 'Michael Jackson';


DELETE
FROM albums
WHERE release_date > 1991;


DELETE
FROM albums
WHERE genre LIKE '%pop%';


DELETE
FROM albums
WHERE artist = 'Michael Jackson';