-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem

select w.id, w_p.age, w.coins_needed, w.power
from wands w
join wands_property w_p
on w.code = w_p.code
where w_p.is_evil = 0
group by w_p.age, w.power
having min(w.coins_needed)
order by (w.power) desc, w_p.age desc;
