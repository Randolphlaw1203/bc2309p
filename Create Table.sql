use BOOTCAMP_EXERCISE1;

drop table job_grades;
drop table employees;
drop table job_history;
drop table departments;
drop table locations;
drop table jobs;
drop table countries;
drop table regions;

create table regions(
	REGION_ID integer primary key,
	REGION_NAME varchar(25)
);

create table countries(
	COUNTRY_ID char(2) primary key,
	COUNTRY_NAME VARCHAR(40),
    REGION_ID integer,
    foreign key (REGION_ID) references regions(REGION_ID)
);

create table locations(
	LOCATION_ID integer primary key,
	STREET_ADDRESS VARCHAR(25),
    POSTAL_CODE VARCHAR(12),
    CITY VARCHAR(30),
    STATE_PROVINCE VARCHAR(12),
    COUNTRY_ID CHAR(2),
    foreign key (COUNTRY_ID) references countries(COUNTRY_ID)
);

create table departments(
	DEPARTMENT_ID integer primary key,
	DEPARTMENT_NAME VARCHAR(30),
    MANAGER_ID integer,
    LOCATION_ID integer,
    foreign key (LOCATION_ID) references locations(LOCATION_ID)
);

create table jobs(
	JOB_ID VARCHAR(10) primary key,
	JOB_TITLE VARCHAR(35),
    MIN_SALARY integer,
    MAX_SALARY integer
);

create table employees(
	EMPLOYEE_ID integer primary key,
	FIRST_NAME VARCHAR(20),
    LAST_NAME VARCHAR(20),
    EMAIL VARCHAR(25),
    PHONE_NUMBER VARCHAR(20),
    HIRE_DATE datetime,
    JOB_ID VARCHAR(10),
    SALARY integer,
    COMMISSION_PCT integer,
    MANAGER_ID integer,
    DEPARTMENT_ID integer,
    foreign key (JOB_ID) references jobs(JOB_ID),
    foreign key (DEPARTMENT_ID) references departments(DEPARTMENT_ID)
);

create table job_history(
	EMPLOYEE_ID integer,
	START_DATE DATETIME,
    END_DATE DATETIME,
    JOB_ID VARCHAR(10),
    DEPARTMENT_ID integer,
    foreign key (JOB_ID) references jobs(JOB_ID),
    foreign key (DEPARTMENT_ID) references departments(DEPARTMENT_ID)
);

create table job_grades(
	GRADE_LEVEL VARCHAR(2) primary key,
	LOWEST_SAL integer,
    HIGHEST_SAL integer
);

