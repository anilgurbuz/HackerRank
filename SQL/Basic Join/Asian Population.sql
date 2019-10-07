-- https://www.hackerrank.com/challenges/asian-population/submissions/code/125937666

select sum(city.population)
from city
join country on city.countrycode = country.code 
where continent = 'Asia';
