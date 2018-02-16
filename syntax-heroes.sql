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