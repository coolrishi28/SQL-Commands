-- Table is named as person and has columns named as id, email

delete from person
where id not in (
  select min(id)
  from person
  group by email
);
