-- Write your PostgreSQL query statement below
select e.name,x.unique_id
from Employees e 
left join EmployeeUNI x
on e.id=x.id