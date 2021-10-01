USE codeup_test_db;

DROP TABLE IF EXISTS users;

CREATE TABLE albums (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       artist VARCHAR(65),
                       name VARCHAR(65),
                       release_date INT NOT NULL,
                       sales FLOAT NOT NULL,
                       genre VARCHAR(65),
                       PRIMARY KEY (id)
);