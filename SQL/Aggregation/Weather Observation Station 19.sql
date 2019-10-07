-- https://www.hackerrank.com/challenges/weather-observation-station-19/problem

select
    round(
        sqrt(power((max(lat_n) - min(lat_n)), 2) +power((max(long_w) - min(long_w)), 2)), 4)
from station;
