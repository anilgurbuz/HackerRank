-- https://www.hackerrank.com/challenges/challenges/problem

select c.hacker_id, h.name, count(c.hacker_id) as cnt
from hackers h
join challenges c 
on h.hacker_id = c.hacker_id
group by c.hacker_id,h.name
having count(c.hacker_id) = (select max(find_max.cnt_max)
              from
                        (select count(hacker_id) as cnt_max
                               from challenges
                               group by hacker_id
                               order by hacker_id desc
                             )find_max
            )
or   count(c.hacker_id) in  (select g.cnt_single
             from
                        (select count(hacker_id) cnt_single
                         from challenges
                         group by hacker_id)g
             group by g.cnt_single
             having count(g.cnt_single) = 1
             )       
order by count(c.hacker_id) desc, c.hacker_id;
