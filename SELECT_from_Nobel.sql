# 1.

SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;
 
 # 2.
 
 SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'literature';
   
# 3.

select yr, subject
from nobel
where winner = 'albert einstein';

# 4.

select winner
from nobel
where subject = 'peace'
and yr >= 2000;

# 5.

select *
from nobel
where subject = 'literature'
and yr between 1980 and 1989;

# 6.

SELECT * 
FROM nobel
WHERE winner in ('Theodore Roosevelt','Woodrow Wilson','Jimmy Carter','Barack Obama');

# 7.

select winner 
from nobel
where winner like 'John%';

# 8.

select yr, subject, winner
from nobel
where (subject = 'Physics' and yr = 1980) or (subject = 'Chemistry' and yr = 1984)
# why wouldn't and work here?

# 9.

select yr, subject, winner
from nobel
where (subject != 'chemistry' 
and subject != 'medicine')
and yr = 1980;

# 10.

select yr, subject, winner 
from nobel
where (yr < 1910 and subject = 'medicine')
or
(yr >= 2004 and subject = 'literature');

# 11.

select *
from nobel 
where winner = 'peter grÜnberg';

# 12.

select *
from nobel 
where winner = 'EUGENE O\'NEILL';

# 13.

select winner, yr, subject
from nobel
where winner like 'sir%'
order by yr desc, winner asc;

# 14.

SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject in ('physics', 'chemistry'),subject, winner;
 