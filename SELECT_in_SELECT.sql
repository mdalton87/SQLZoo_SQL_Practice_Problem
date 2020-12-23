# 1.

SELECT name 
FROM world
WHERE population >
     (SELECT population FROM world
      WHERE name ='Russia')

# 2.

select name
from world
where continent = 'Europe'
and
gdp/population > (
		select gdp/population
		from world
		where name = 'United Kingdom')

# 3.

select name, continent
from world
where continent in
(
select continent
from world
where name = 'Argentina' or name = 'Australia'
)
order by name;

# 4.

select name, population
from world
where population < ((
select population 
from world
where name = 'poland') and population > (
select population
from world
where name = 'canada'))

# 5. YOU ARE HERE

select name, ((population/(
     select population
     from world
     where name = 'germany')*100'%')) as percentage
from world
where continent = 'europe';

# 6.



# 7.



# 8.



# 9.



# 10

      