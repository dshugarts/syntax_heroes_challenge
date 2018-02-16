# Syntax Heroes Challenge Group
- Dan
- Renee

# Joins Syntax Heroes Challenge

Welcome to the wonderful world of SQL Joins! How strange, huh? We're going to be practicing with some many-to-many relationship using super heroes and super powers.

You will need to set up the data given below and then determine queries that answer the questions at the bottom. This will flex your understanding of both aggregates and joining tables.

Keep in mind that not every question below requires you join all the tables together. You need to mix and match the tables to get the correct data.

## Set up
FIRST: Create a database named: sql_joins_syntax_heroes

Make sure you are working in this database for the following.

# Add Hero Identities
```
-- hero table
CREATE TABLE heroes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    alias VARCHAR(200)
);

-- hero identity data
INSERT INTO heroes (name, alias) 
VALUES ('Superman', 'Clark Kent'),
('Batman', 'Bruce Wayne'),
('Professor X', 'Charles Xavier'),
('Wolverine', 'Logan'),
('Cyclops', 'Scott Summers');

SELECT * FROM heroes;
```

# Add Super Power Data
```
-- powers table
CREATE TABLE powers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    description VARCHAR(255)
);

-- powers data
INSERT INTO powers (name, description)
VALUES 
('Flight', 'Can fly'), 
('Telekinesis', 'Can physically move things with the mind'), 
('Healing Factor', 'Heals at an accelerated rate'),
('Super Strength', 'Abnormally physically strong'),
('Super Intelligence', 'Way, way, way smarter than the average bear'),
('Telepathy', 'Can communicate mentally with another being'),
('Laser Vision', 'Emits energy beams from the eyes'),
('Super Speed', 'Faster than a speeding bullet');

SELECT * FROM powers;
```

# Hero/Power Combinations
```
-- Create junction table
CREATE TABLE heroes_powers (
    id SERIAL PRIMARY KEY,
    hero_id INT REFERENCES heroes,
    power_id INT REFERENCES powers,
    power_level INT
);

-- Now, assign powers to heroes
INSERT INTO heroes_powers (hero_id, power_id, power_level)
VALUES 
(1,1,5), (1,4,5), (1,7,1), (1,8,3),
(2,5,5), (2,4,4), (2,8,1),
(3,2,4), (3,6,5), (3,5,5),
(4,3,5), (4,4,2),
(5,4,2), (5,7,5), (5,8,1);
```

# Questions
Create an SQL file with your answers, add it to a repo and push it to Github. Submit this new repo.

```
-- 1. How many powers are there?

-- 2. List all heroes and their powers. It's okay that heroes appear multiple times.

-- 3. Find all of Professor X's powers.

-- 4. Add a new super power. 

-- 5. Add this power to an existing hero.

-- 6. Which heroes have laser vision? Include their name and alias.

-- 7. How many can fly? A twist on the above...

-- 8. What is the average super strength power level?

-- 9. Show all the information for heroes with super strength power level over 2.

-- 10. Find the average power level for all powers. Include the power name and descriptions.
```

# Tasks
- [ ] How many powers are there?
- [ ] List all heroes and their powers. It's okay that heroes appear multiple times.
- [ ] Find all of Professor X's powers.
- [ ] Add a new super power. 
- [ ] Add this power to an existing hero.
- [x] Which heroes have laser vision? Include their name and alias.
- [x] How many can fly? A twist on the above...
- [x] What is the average super strength power level?
- [x] Show all the information for heroes with super strength power level over 2.
- [x] Find the average power level for all powers. Include the power name and descriptions.