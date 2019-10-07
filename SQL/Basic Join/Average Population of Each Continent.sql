-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

select country.continent, trunc(avg(city.population))
from city
join country on city.countrycode = country.code
group by country.continent
order by 2;
