USE codeup_test_db;

DROP TABLE IF EXISTS albums;

      CREATE TABLE albums (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
        artist VARCHAR(225),
        name VARCHAR(225),
        release_date INTEGER,
        sales FLOAT,
        genre VARCHAR(225)
      );

