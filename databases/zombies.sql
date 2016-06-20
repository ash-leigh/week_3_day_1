DROP TABLE bitings;
DROP TABLE zombies;
DROP TABLE victims;

CREATE TABLE zombies (
  id SERIAL8 primary key,
  name VARCHAR(255) not null,
  type VARCHAR(255) not null
);

CREATE TABLE victims (
  id SERIAL8 primary key,
  name VARCHAR(255) not null,
  run_speed INT2 not null
);

CREATE TABLE bitings (
  id SERIAL8 primary key,
  zombie_id INT8 references zombies(id),
  victim_id INT8 references victims(id),
  infected_on DATE not null
);

INSERT INTO victims (name, run_speed) VALUES ('Euan', 100);
INSERT INTO victims (name, run_speed) VALUES ('Josh', 2);
INSERT INTO victims (name, run_speed) VALUES ('Russle', 75);
INSERT INTO victims (name, run_speed) VALUES ('Renwick', 75);

INSERT INTO zombies (name, type) VALUES ('Chris', 'Runner');
INSERT INTO zombies (name, type) VALUES ('Sam', 'Drooler');
INSERT INTO zombies (name, type) VALUES ('Marie', 'Walker');
INSERT INTO zombies (name, type) VALUES ('Joe', 'Drooler');

INSERT INTO bitings (zombie_id, victim_id, infected_on) VALUES (1,1,'2015-01-12');
INSERT INTO bitings (zombie_id, victim_id, infected_on) VALUES (2,2,'2015-01-13');
INSERT INTO bitings (zombie_id, victim_id, infected_on) VALUES (3,3,'2015-01-14');
INSERT INTO bitings (zombie_id, victim_id, infected_on) VALUES (1,2,'2015-01-12');

-- SELECT * FROM zombies;
-- SELECT * FROM victims;
-- SELECT * FROM bitings;

/** Lets gets Chris' ID **/
-- SELECT id FROM zombies WHERE name = 'Chris';
-- /** Look up all rows in bitings where the zombies id is 1 **/
-- -- SELECT victim_id FROM bitings WHERE zombie_id = 1;
-- /**Go to victims and find names where id is 1 or 2**/
-- SELECT name from victims WHERE id IN (SELECT victim_id FROM bitings WHERE zombie_id = 1);

-- SELECT victims.name AS victim_name, bitings.infected_on, zombies.name AS zombie_name
-- FROM victims 
-- INNER JOIN bitings ON bitings.victim_id = victims.id
-- INNER JOIN zombies ON bitings.victim_id = zombies.id;

SELECT victims.name, bitings.infected_on, zombies.name FROM victims
INNER JOIN bitings ON bitings.victim_id = victims.id
INNER JOIN zombies ON bitings.zombie_id = zombies.id WHERE zombies.name = 'Chris';










