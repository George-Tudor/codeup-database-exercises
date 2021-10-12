CREATE DATABASE candy_db;

USE candy_db;

CREATE TABLE types(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    description TEXT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE candies(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    price_in_cents INT NOT NULL,
    description TEXT NOT NULL,
    types_id INT UNSIGNED NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (types_id) REFERENCES types(id)
);

INSERT INTO types (name, description) VALUES
    ('Chewing Gum', 'Great for chewing!'),
    ('Chocolate', 'Great for chocolate goodness!'),
    ('Hard Candy', 'Don’‘t bite too hard!'),
    ('Gummy Candy', 'Not too hard; not too soft.'
    );

INSERT INTO candies (name, price_in_cents, description, types_id) VALUES
    ('Doublemint Gum', 159, 'Standard chewing gum', 1),
    ('Orbit Gum', 110, 'Another standard chewing gum', 1),
    ('Hershey Bar', 210, 'Standard chocolate bar', 2),
    ('Gushers', 312, 'Nice and sour!', 4),
    ('Sour Patch Kids', 206, 'Quite sour!', 4),
    ('M&Ms', 199, 'Crunchy and chocolatey', 2);

SELECT t.name AS 'Candy Type', candies.name AS 'Candy Name', price_in_cents from candies
JOIN candy_db.types t on t.id = candies.types_id
WHERE price_in_cents > 200;


# What is the relationship between the candies and types table?
#ONE TO MANY
# Write a query to display the type name and candy name for all candies over 200 cents.