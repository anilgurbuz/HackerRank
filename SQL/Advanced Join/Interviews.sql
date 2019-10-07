-- https://www.hackerrank.com/challenges/interviews/problem

select *
  from (select con.*,
               (select sum(total_submissions)
                  from submission_stats s, challenges c, colleges col
                 where s.challenge_id = c.challenge_id
                   and c.college_id = col.college_id
                   and col.contest_id = con.contest_id) total_submissions,
               (select sum(total_accepted_submissions)
                  from submission_stats s, challenges c, colleges col
                 where s.challenge_id = c.challenge_id
                   and c.college_id = col.college_id
                   and col.contest_id = con.contest_id) total_accepted_submissions,
               (select sum(total_views)
                  from View_Stats v, challenges c, colleges col
                 where v.challenge_id = c.challenge_id
                   and c.college_id = col.college_id
                   and col.contest_id = con.contest_id) total_views,
               (select sum(total_unique_views)
                  from View_Stats v, challenges c, colleges col
                 where v.challenge_id = c.challenge_id
                   and c.college_id = col.college_id
                   and col.contest_id = con.contest_id) total_unique_views
          from contests con)
 where total_submissions <> 0
   and total_accepted_submissions <> 0
   and total_views <> 0
   and total_unique_views <> 0
 order by contest_id;
