-- https://www.hackerrank.com/challenges/the-company/problem

select c.company_code,
       c.founder,
       count(distinct l.lead_manager_code),
       count(distinct s.senior_manager_code),
       count(distinct m.manager_code),
       count(distinct e.employee_code)
       from company c,
             lead_manager l,
             senior_manager s,
             manager m,
             employee e
       where l.company_code=c.company_code 
       and   s.company_code=l.company_code 
       and      m.company_code=s.company_code 
       and      e.company_code=m.company_code
       group by c.company_code,
                c.founder
       order by company_code;
