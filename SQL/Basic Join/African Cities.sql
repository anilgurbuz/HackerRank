-- https://www.hackerrank.com/challenges/african-cities/problem

select city.name
from city
join country on city.countrycode = country.code
where continent = 'Africa';
