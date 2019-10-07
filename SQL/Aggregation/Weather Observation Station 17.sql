-- https://www.hackerrank.com/challenges/weather-observation-station-17/problem

select round(long_w,4)
from station
where lat_n = (select min(lat_n)
              from station
              where lat_n > 38.7780);
