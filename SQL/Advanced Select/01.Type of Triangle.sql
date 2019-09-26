-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem

select 
    case
        when A>=(B+C) OR B>=(A+C) OR C >=(A+B) then 'Not A Triangle' 
        when A=B AND A=C then 'Equilateral'
        when A=B OR B=C OR A=C then 'Isosceles'
        else 'Scalene'
    end 
from triangles;
