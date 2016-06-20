/**DROP TABLES**/
DROP TABLE lightsabers;
DROP TABLE jedi;

/**CREATE TABLES**/
CREATE TABLE jedi (
  id SERIAL8 primary key,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT2
);

CREATE TABLE lightsabers (
  id SERIAL8 primary key,
  hilt_metal VARCHAR(255) not null,
  colour VARCHAR(255) not null,
  owner_id INT8 references jedi(id)
);




/** INSERTING **/
INSERT INTO jedi (name, darkside, age) VALUES ('luke', false, 21);
INSERT INTO jedi (age, darkside, name) VALUES (100, true, 'vader');
INSERT INTO jedi (name, darkside, age) VALUES ('yoda', false, 1000);
INSERT INTO jedi (name, darkside, age) VALUES ('anakin', false, 12);

/** INSERTING SUBSET OF VALUES **/
INSERT INTO jedi (name, age) VALUES ('obiwan', 33);

/** UPDATING **/
UPDATE jedi SET darkside = true;
UPDATE jedi SET darkside = false WHERE name = 'luke';
UPDATE jedi SET darkside = false WHERE name = 'obiwan' AND age = 33;
/** UPDATING TWO VALUES AT SAME TIME **/
UPDATE jedi SET age = 22, darkside = true WHERE name = 'anakin';

/** DELETE **/
DELETE FROM jedi WHERE name = 'luke';
DELETE FROM jedi WHERE name = 'yoda';

/** TWO JEDI WITH SAME NAME **/
INSERT INTO jedi (name, darkside, age) VALUES ('obiwan', false, 32);
UPDATE jedi SET age = 33 WHERE name = 'obiwan' AND age = 32;

-- SELECT * FROM jedi ORDER BY id;

/** LIGHTSABERS **/

-- INSERT INTO lightsabers (hilt_metal, colour, owner) VALUES ('palladium', 'green', 'yoda');
-- INSERT INTO lightsabers (hilt_metal, colour, owner) VALUES ('gold', 'green', 'luke');
INSERT INTO lightsabers (hilt_metal, colour, owner_id) VALUES ('palladium', 'green', 2);

SELECT * FROM lightsabers ORDER BY id;

SELECT * FROM jedi ORDER BY id;
-- SELECT COUNT(*) FROM lightsabers;

SELECT * FROM jedi INNER JOIN lightsabers ON jedi.id = lightsabers.owner_id;














