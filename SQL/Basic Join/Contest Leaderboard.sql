-- https://www.hackerrank.com/challenges/contest-leaderboard/problem

select find_max.hacker_id,h.name,sum(find_max.max_scores)
from hackers h
join (select hacker_id, challenge_id, max(score) max_scores
        from submissions 
        group by hacker_id, challenge_id)find_max
on find_max.hacker_id = h.hacker_id
group by find_max.hacker_id, h.name
having sum(find_max.max_scores)>0
order by sum(find_max.max_scores) desc, find_max.hacker_id;
