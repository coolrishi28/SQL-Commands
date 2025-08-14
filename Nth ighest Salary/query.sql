delimiter //

create function getNthHighestSalary(n int) returns int
deterministic
begin
  declare result int;

  select distinct salary
  into result
  from employee
  order by salary desc
  limit 1 offset n-1

  return result;
end//
delimiter;
