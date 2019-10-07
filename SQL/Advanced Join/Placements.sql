-- https://www.hackerrank.com/challenges/placements/problem

select s.name
from students s
join packages p 
on s.id= p.id
join (select p.salary as f_salary, f.id as f_id
                    from packages p 
                    join friends f
                    on f.friend_id = p.id
        )temp
on temp.f_id = s.id
where (temp.f_salary-p.salary)>0
order by temp.f_salary asc;
