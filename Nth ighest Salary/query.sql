create function getNthHighestSalary(n int) returns int
begin
  return (
  select distinct salary
  from employee
  order by salary desc
  limit 1 offset n-1
  );
