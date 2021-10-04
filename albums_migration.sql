USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       artist VARCHAR(200) NOT NULL,
                       name VARCHAR(200) NOT NULL,
                       release_date SMALLINT UNSIGNED NOT NULL,
                       sales FLOAT(6, 2) NOT NULL,
                       genre VARCHAR(200) NOT NULL,
                       PRIMARY KEY (id)
);