-- https://www.hackerrank.com/challenges/the-report/problem

select 
    case when g.grade > 7 then s.name else 'NULL' end as name,
    g.grade,s.marks
from students s
inner join grades g
on s.marks <= g.max_mark
    and s.marks >= g.min_mark
order by g.grade desc,name asc,s.marks asc;
