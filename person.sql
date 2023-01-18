CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    age INTEGER NOT NULL,
    height INTEGER,
    city VARCHAR(40),
    favorite_color VARCHAR(20)
);

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Michael', 45, 175, 'Paris', 'Blue'),
('Heidi', 43, 160, 'Layton', 'Red'),
('Madilyn', 18, 155, 'Lehi', 'Green'),
('Cydnee', 16, 155, 'Nibley', 'Blue'),
('Avery', 12, 145, 'Nibley', 'Pink');

SELECT name
FROM person
ORDER BY height DESC;

SELECT name
FROM person
ORDER BY height;

SELECT name
FROM person
ORDER BY age DESC;

SELECT name
FROM person
WHERE age > 20;

SELECT name
FROM person
WHERE age = 18;

SELECT name
FROM person
WHERE age < 20 OR age > 30;

SELECT name
FROM person
WHERE age != 27;

SELECT name
FROM person
WHERE favorite_color != 'Red';

SELECT name
FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

SELECT name
FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

SELECT name
FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

SELECT name
FROM person
WHERE favorite_color IN ('Yello', 'Purple');