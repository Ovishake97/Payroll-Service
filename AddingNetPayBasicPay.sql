use payroll_service;
--Adding address, phone and department to the employee table
alter table employee_payroll add phone int;
alter table employee_payroll add address varchar(30) default 'Gurugram';
alter table employee_payroll add department varchar(30) not null default 'IT';
--Renaming the salary column as 'Basic Pay'
--and adding the other fields related to employee salary
exec sp_rename 'employee_payroll.salary' ,'Basic_Pay','COLUMN';  
alter table employee_payroll add Deductions float ,Taxable_Pay float,Income_Tax float,Net_Pay float; 
