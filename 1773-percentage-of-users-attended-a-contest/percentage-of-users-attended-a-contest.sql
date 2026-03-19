select r.contest_id,round(count(r.user_id)*100/(select count(*) from users)::numeric,2) as percentage
from Users u
right join Register r
on u.user_id=r.user_id
group by r.contest_id
order by percentage desc,r.contest_id;
