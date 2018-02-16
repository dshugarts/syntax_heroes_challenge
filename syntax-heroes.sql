
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

-- 6. Which heroes have laser vision? Include their name and alias.
SELECT * FROM heroes_powers
JOIN heroes ON heroes.id = heroes_powers.hero_id
JOIN powers ON powers.id = heroes_powers.power_id
WHERE power_id = 7;

-- 7. How many can fly? A twist on the above...
SELECT * FROM heroes_powers
JOIN heroes ON heroes.id = heroes_powers.hero_id
JOIN powers ON powers.id = heroes_powers.power_id
WHERE power_id = 1;

-- 8. What is the average super strength power level?
SELECT AVG(power_level) AS "Average Power Level For Super Strength"
FROM heroes_powers
JOIN powers ON powers.id = heroes_powers.power_id
WHERE powers.name = 'Super Strength';

-- 9. Show all the information for heroes with super strength power level over 2.
SELECT * FROM heroes_powers
JOIN heroes ON heroes.id = heroes_powers.hero_id
JOIN powers ON powers.id = heroes_powers.power_id
WHERE power_level > 2;

-- 10. Find the average power level for all powers. Include the power name and 
-- descriptions.
SELECT powers.name, powers.description, AVG(power_level) AS "Average Power Level"
FROM heroes_powers
JOIN powers ON powers.id = heroes_powers.power_id
GROUP BY powers.name, powers.description;

