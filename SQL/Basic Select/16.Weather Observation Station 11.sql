-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem

select distinct city from station
where regexp_like (city,'^[^AEIOU]|[^aeiou]$');
