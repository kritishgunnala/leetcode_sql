select q.query_name,round(avg(q.rating::numeric /q.position),2) as quality,round(sum(case when q.rating <3 then 1 else 0 end)*100.0/count(*),2) as poor_query_percentage
from Queries q
where q.query_name IS NOT null
group by q.query_name 
order by q.query_name desc;

 
 