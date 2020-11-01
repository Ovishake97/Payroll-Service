use payroll_service;
--Adding address, phone and department to the employee table
alter table employee_payroll add phone int;
alter table employee_payroll add address varchar(30) default 'Gurugram';
alter table employee_payroll add department varchar(30) not null default 'IT';
--Renaming the salary column as 'Basic Pay'
--and adding the other fields related to employee salary
exec sp_rename 'employee_payroll.salary' ,'Basic_Pay','COLUMN';  
alter table employee_payroll add Deductions float ,Taxable_Pay float,Income_Tax float,Net_Pay float; 
--Making the employee Terisa part of both the sales and the marketing team
--But it also creates thwo different employee id for the same person
insert into employee_payroll(name,Basic_Pay,start_date,Gender,phone,address,department,Deductions,Taxable_pay,Income_Tax,Net_Pay)
values('Terisa',343543,'2018-03-08','F',49494949,'Delhi','Marketing',5453,545432,65656,30887);
insert into employee_payroll(name,Basic_Pay,start_date,Gender,phone,address,department,Deductions,Taxable_pay,Income_Tax,Net_Pay)
values('Terisa',343543,'2018-03-08','F',49494949,'Delhi','Sales',5453,545432,65656,30887);