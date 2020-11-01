use payroll_service;
--Adding address, phone and department to the employee table
alter table employee_payroll add phone int;
alter table employee_payroll add address varchar(30) default 'Gurugram';
alter table employee_payroll add department varchar(30) not null default 'IT';