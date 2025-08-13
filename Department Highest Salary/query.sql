-- Table is named as employees and has columns named as salary, name, departmentid
-- Table is named as departmet and has columns named as id, name

select d.name as department, e.name as employee, e.salary
from employees e
join department d on e.departmentid = d.id
where (e.salary, e.departmentid) in (
  select max(salary), departmentid
  from employee
  group by departmentid
);
