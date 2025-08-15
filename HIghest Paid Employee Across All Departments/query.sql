select d.name as department, e.name as employee, e.salary
from employees e
join department d on e.departmentid = d.id
where e.salary = (
  select max(salary)
  from employees
);
