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
SELECT name, price FROM shows WHERE price = MAX(price);









