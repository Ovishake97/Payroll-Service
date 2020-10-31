Create database payroll_service;
use payroll_service;
--Creating table of the said form
create table employee_payroll(
id int not null identity(1,1) primary key,
name varchar(30),
salary int,
start_date date
);
--Inserting values to the newly made table
insert into employee_payroll(name,salary,start_date)
values('Rajesh',445950,'2017-09-02'),
('Mahesh',494949,'2018-02-02'),
('Pooja',33348,'2018-06-22');
--Retriving the data from the payroll
select * from employee_payroll;