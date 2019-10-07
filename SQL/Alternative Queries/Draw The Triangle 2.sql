-- https://www.hackerrank.com/challenges/draw-the-triangle-2/submissions/code/126273572

select rpad('*',level*2,' *')
from dual
connect by level <= 20;
