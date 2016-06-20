DROP TABLE colours;
DROP TABLE foods;
DROP TABLE plants;

CREATE TABLE foods (
  id SERIAL8 primary key,
  name VARCHAR(255),
  food_group VARCHAR(255),
  delicious BOOLEAN,
  price INT2
  );

CREATE TABLE colours (
  id SERIAL8 primary key,
  name VARCHAR(255),
  food_item_id INT8 references foods(id)
  );

CREATE TABLE plants (
  id SERIAL8 primary key,
  name VARCHAR(255),
  colour_id INT8 references colours(id)
  );

INSERT INTO foods (name, food_group, delicious, price) VALUES ('bread', 'carbohydrates', true, 2);
INSERT INTO foods (name, food_group, delicious, price) VALUES ('butter', 'dairy', true, 3);
INSERT INTO foods (name, food_group, delicious, price) VALUES ('cucumber', 'vegetable', true, 1);
INSERT INTO foods (name, food_group, delicious, price) VALUES ('pepper', 'spice', true, 1);

INSERT INTO colours (name, food_item_id) VALUES ('white', 1);
INSERT INTO colours (name, food_item_id) VALUES ('yellow', 2);
INSERT INTO colours (name, food_item_id) VALUES ('green', 3);
INSERT INTO colours (name, food_item_id) VALUES ('black', 4);

INSERT INTO plants (name, colour_id) VALUES ('lily', 1);
INSERT INTO plants (name, colour_id) VALUES ('sunflower', 2);
INSERT INTO plants (name, colour_id) VALUES ('holly', 3);
INSERT INTO plants (name, colour_id) VALUES ('dead', 4);

SELECT * FROM foods;
SELECT * FROM colours;
SELECT * FROM plants;

SELECT * FROM foods INNER JOIN colours ON foods.id = colours.food_item_id;

