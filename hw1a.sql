create or replace procedure change(deptt_id number,man_id number) is
begin
update departments
set manager_id=man_id;
where department_id=deptt_id;

end change;

create or replace function ls_emp(deptid number)
return varchar is
first_n VARCHAR(20);
last_n varchar(20);
begin
select e.first_name,e.last_name into first_n,last_n
from EMPLOYEES e 
join DEPARTMENTS d
on e.department_ID=d.department_id
where e.department_id=deptid;
return first_n||last_n;
end ls_emp;
