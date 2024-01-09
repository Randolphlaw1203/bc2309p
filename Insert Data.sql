delete from job_grades;
delete from employees;
delete from job_history;
delete from departments;
delete from locations;
delete from jobs;
delete from countries;
delete from regions;

insert into regions (REGION_ID, REGION_NAME)
value ('1', 'Euro');
insert into regions (REGION_ID, REGION_NAME)
value ('2', 'Amercia');
insert into regions (REGION_ID, REGION_NAME)
value ('3', 'Asia');
select * from regions;

insert into countries (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
value ('DE', 'Germany', '1');
insert into countries (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
value ('IT', 'Italy', '1');
insert into countries (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
value ('JP', 'Japan', '3');
insert into countries (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
value ('US', 'United State', '2');
select * from countries;

insert into locations (	LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID)
values ('1000', '1297 Via Cola di Rie', '989', 'Roma', '', 'IT');
insert into locations (	LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID)
values ('1100', '93091 Calle della Te', '10934', 'Venice', '', 'IT');
insert into locations (	LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID)
values ('1200', '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo JP', 'JP');
insert into locations (	LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID)
values ('1400', '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US');
select * from locations;

insert into departments ( DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID)
values ('10', 'Administration', '200', '1100');
insert into departments ( DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID)
values ('20', 'Marketing', '201', '1200');
insert into departments ( DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID)
values ('30', 'Pruchasing', '202', '1400');
select * from departments;

insert into jobs ( JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
values ('ST_CLERK', 'Senior', '10000', '40000');
insert into jobs ( JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
values ('MK_REP', 'Senior', '9000', '20000');
insert into jobs ( JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
values ('IT_PROG', 'Senior', '10000', '20000');
select * from jobs;

insert into employees (	EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
values ('100', 'Steven', 'King', 'SKING', '515-1234567', '1987-06-17', 'ST_CLERK', '24000', '0', '109', '10');
insert into employees (	EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
values ('101', 'Neena', 'Kochhar', 'NKOCHHAR', '515-1234568', '1987-06-18', 'MK_REP', '17000', '0', '103', '20');
insert into employees (	EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
values ('102', 'Lex', 'De Haan', 'LDEHAAN', '515-1234569', '1987-06-19', 'IT_PROG', '17000', '0', '108', '30');
insert into employees (	EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
values ('103', 'Alexander', 'Hunold', 'AHUNOLD', '590-4234567', '1987-06-20', 'MK_REP', '0000', '0', '105', '20');
select * from employees;

insert into job_history ( EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID)
values ('102', '1993-01-13', '1998-07-24', 'IT_PROG', '20');
insert into job_history ( EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID)
values ('101', '1989-09-21', '1993-10-27', 'MK_REP', '10');
insert into job_history ( EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID)
values ('101', '1993-10-28', '1997-03-15', 'MK_REP', '30');
insert into job_history ( EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID)
values ('100', '1996-02-17', '1999-12-19', 'ST_CLERK', '30');
insert into job_history ( EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID)
values ('103', '1998-03-24', '1999-12-31', 'MK_REP', '20');
select * from job_history;

insert into job_grades( GRADE_LEVEL, LOWEST_SAL, HIGHEST_SAL)
values ('D', '20000', '100000');
insert into job_grades ( GRADE_LEVEL, LOWEST_SAL, HIGHEST_SAL)
values ('M', '20000', '90000');
insert into job_grades ( GRADE_LEVEL, LOWEST_SAL, HIGHEST_SAL)
values ('AM', '20000', '70000');
select * from job_grades;

