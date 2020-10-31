Create database payroll_service;
use payroll_service;
--Creating table of the said form
create table employee_payroll(
id int not null identity(1,1) primary key,
name varchar(30),
salary int,
start_date date
);
