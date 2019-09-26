-- https://www.hackerrank.com/challenges/occupations/problem

select 
    doctor,professor,singer,actor 
    from (
        select * from 
        (select Name, occupation, (ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name)) as row_num 
         from occupations order by name asc) 
        pivot (
            min(name) 
            for occupation in ('Doctor' as doctor,'Professor' as professor,'Singer' as singer,'Actor' as actor)
        ) 
        order by row_num);
