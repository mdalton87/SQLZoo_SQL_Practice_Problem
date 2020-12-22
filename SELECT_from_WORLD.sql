# 1. 

SELECT name, continent, population 
FROM world;

# 2.

SELECT name
  FROM world
 WHERE population > 200000000;
 
 # 3.
 
 select name, GDP/population
from world
where population >= 200000000;

# 4.

select name, population/1000000
from world
where continent = 'South America' ;

# 5.

select name, population
from world
where name in ('france','germany','italy');

# 6.

select name
from world
where name like '%united%';

# 7.

select name, population, area
from world
where area > 3000000
or population > 250000000;

# 8.

select name, population, area
from world
where (area > 3000000 xor population > 250000000);

# 9.

select name, round(population/1000000, 2), round(GDP/1000000000, 2)
from world
where continent = 'south america';

# 10.

select name, round(gdp/population, -3)
from world
where gdp >= 1000000000000

# 11.

SELECT name, capital
  FROM world
 WHERE LENGTH(capital) = LENGTH(name);

# 12.

SELECT name, capital
FROM world
where (substr(name, 1, 1) = substr(capital, 1, 1)) 
and (name != capital);

# 13.

SELECT name
   FROM world
WHERE name LIKE '%a%'
and name LIKE '%e%'
and name LIKE '%i%'
and name LIKE '%o%'
and name LIKE '%u%'
AND name NOT LIKE '% %'