--1 How many powers are there?
SELECT COUNT(powers.id)
FROM powers;

--2 List all heroes and their powers. It's okay that heroes appear multiple times.
SELECT heroes.name, powers.name
FROM heroes_powers
JOIN heroes ON heroes.id=heroes_powers.hero_id
JOIN powers ON powers.id=heroes_powers.power_id;

--3 Find all of Professor X's powers.
SELECT heroes.name, powers.name
FROM heroes_powers
JOIN heroes ON heroes.id=heroes_powers.hero_id
JOIN powers ON powers.id=heroes_powers.power_id
WHERE heroes.name='Professor X';

--4 Add a new super power. 
INSERT INTO powers (name, description)
VALUES ('X-Ray Vision', 'Ability to see through walls');

--5 Add this power to an existing hero.
INSERT INTO heroes_powers (hero_id, power_id, power_level)
VALUES (1, 9, 5);