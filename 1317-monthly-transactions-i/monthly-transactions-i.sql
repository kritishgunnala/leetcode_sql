select  to_char(t.trans_date,'yyyy-mm') as month,t.country,count(*) as trans_count,count(t.state) filter (where t.state='approved') as approved_count, sum(t.amount) as trans_total_amount, coalesce(sum(t.amount) filter ( where t.state ='approved'),0) as approved_total_amount
from Transactions t
group by "month",t.country;