use payroll_service;
--creating separate tables using normalisation principle and adding values to them
create table employee_details(
id int not null identity(1,1) primary key,
name varchar(30),
salary int,
start_date date,
gender char(1)
);
create table employee_contact(
id int not null ,
phone int
);
create table department(
dept_id int not null primary key,
deptname varchar(30),
id int foreign key references employee_details(id)
);
alter table department add address varchar(30) default 'Gurugram';
create table salary(
dept_id int foreign key references department(dept_id),
basic_pay int,
deductions int,
taxable_pay int,
income_tax int,
net_pay int
);
insert into employee_details(name,salary,start_date,gender)
values('Rakesh',585858,'2018-02-01','M'),
('Pooja',575643,'2017-02-07','F'),
('Naveen',393933,'2019-04-12','M'),
('Shakshi',625362,'2012-04-22','F');
insert into department(dept_id,deptname,id)
values(101,'IT',1),
(102,'HR',2),
(103,'Marketing',1),
(104,'Sales',3);
insert into salary(dept_id,basic_pay,deductions,taxable_pay,income_tax,net_pay)
values(101,575758,5858,3456,2556,5530303),
(102,499494,494,4949,521,444566),
(103,550404,4949,3747,3493,502241),
(104,501242,4848,4949,1245,480912);
--getting average salary from salary table corresponding to the gender in employee details table
select avg(basic_pay) from salary where dept_id in(select dept_id from department where id in(select id from employee_details where gender='F'));
--ability to perform UC 5 operations like getting salary details for specified conditions
select Max(basic_pay) from salary where dept_id in(select dept_id from department where id in(select id from employee_details where name='Rakesh'));
select basic_pay from salary where dept_id in(select dept_id from department where id in(select id from employee_details where start_date between cast('2018-1-1' as date) and convert(date,getdate())));
