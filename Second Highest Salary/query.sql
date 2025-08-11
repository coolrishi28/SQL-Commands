-- Table is named as employees and has a column called salary 

select max(salary) as secondhighestsalary
from employees
where salary < (
  select max(salary) from employees
  );
