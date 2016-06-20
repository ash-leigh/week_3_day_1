-- SELECT name FROM users;
-- SELECT name FROM shows WHERE price < 15.00;
-- INSERT INTO users (name) VALUES ('Val Gibson');
-- -- SELECT name FROM users WHERE name = 'Val Gibson';
-- INSERT INTO shows_users (show_id, user_id) VALUES (12, 19);
-- SELECT * FROM shows_users WHERE user_id = 19;
-- UPDATE users SET name = 'Valerie Gibson' WHERE name = 'Val Gibson';
-- SELECT name FROM users WHERE name = 'Valerie Gibson';
-- DELETE FROM users WHERE name = 'Valerie Gibson';
-- SELECT name FROM users;
-- DELETE FROM shows_users WHERE id = 82;
-- SELECT name, price FROM shows ORDER BY price ASC;
-- SELECT AVG(price) FROM shows;
-- SELECT MIN(price) FROM shows;
-- SELECT SUM(price) FROM shows;
-- SELECT SUM(price) FROM shows WHERE price < 20;
-- SELECT name, price FROM shows WHERE price = (SELECT MAX(price) FROM shows);
-- SELECT name, price FROM shows WHERE price = (SELECT MIN(price) FROM shows WHERE price > (SELECT MIN(price) FROM shows));
-- SELECT name FROM users WHERE name LIKE 'N%';
-- SELECT name FROM users WHERE name LIKE '%er%';
-- SELECT time FROM times INNER JOIN shows ON shows.id = times.show_id WHERE shows.name = 'Edinburgh Royal Tattoo';
-- SELECT COUNT(*) FROM shows_users INNER JOIN shows ON shows_users.show_id = shows.id WHERE shows.name = 'Shitfaced Shakespeare';
-- SELECT users.name, COUNT(shows_users.id) FROM users INNER JOIN shows_users ON users.id = shows_users.user_id GROUP BY name;
-- SELECT * FROM users INNER JOIN shows_users ON users.id = shows_users.user_id INNER JOIN times ON shows_users.show_id = times.show_id WHERE times.time = '17:15';















