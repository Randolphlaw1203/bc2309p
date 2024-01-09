use bootcamp_exercise1;
-- 3
select location_id, street_address, city, state_province, c.country_name
from locations l
left join countries c
on l.country_id = c.country_id;

-- 4
select first_name, last_name, department_id from employees;

-- 5
select first_name, last_name, job_id, e.department_id
from employees e
left join departments d
on e.department_id = e.department_id
left join locations l
on l.location_id = d.location_id
where country_id = 'JP';