


SELECT capital
  FROM world
 WHERE name = 'France'
 
# 1.
SELECT population 
FROM world
WHERE name = 'Germany'

# 2.

SELECT name, population 
FROM world
WHERE name IN ('sweden', 'norway', 'denmark');

# 3.

SELECT name, area 
FROM world
WHERE area BETWEEN 200000 AND 250000
