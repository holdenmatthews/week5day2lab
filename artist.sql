INSERT INTO artist (name)
VALUES ('Adele'),
('Tabitha'),
('Froukje');

SELECT name 
FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT name 
FROM artist
ORDER BY name
LIMIT 5;

SELECT name
FROM artist
WHERE name LIKE 'Black%';

SELECT name
FROM artist
WHERE name LIKE '%Black%';