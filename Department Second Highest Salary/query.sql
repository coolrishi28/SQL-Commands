select d.name as department, e.name as employee, e.salary
from employees e
join department d on e.departmentid = d.id
where e.salary = (
  select distinct salary
  from employees
  where departmentid = e.departmentid
  order by salary desc
  limit 1 offset 1
);
