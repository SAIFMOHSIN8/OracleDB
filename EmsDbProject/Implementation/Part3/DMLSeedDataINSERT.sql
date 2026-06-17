-- JOB_DEPARTMENT --

INSERT INTO JOB_DEPARTMENT
VALUES (seq_job_department.NEXTVAL,'IT','Information Technology',
        'Software and systems','5000-9000');

INSERT INTO JOB_DEPARTMENT
VALUES (seq_job_department.NEXTVAL,'HR','Human Resources',
        'Employee management','4000-7000');

INSERT INTO JOB_DEPARTMENT
VALUES (seq_job_department.NEXTVAL,'Finance','Finance',
        'Financial operations','4500-8500');

INSERT INTO JOB_DEPARTMENT
VALUES (seq_job_department.NEXTVAL,'Marketing','Marketing',
        'Brand promotion','4000-7500');

INSERT INTO JOB_DEPARTMENT
VALUES (seq_job_department.NEXTVAL,'Operations','Operations',
        'Business operations','4500-8000');



--  SALARY_BONUS  --

INSERT INTO SALARY_BONUS
VALUES (seq_salary_bonus.NEXTVAL,6500,78000,2000,1);

INSERT INTO SALARY_BONUS
VALUES (seq_salary_bonus.NEXTVAL,5000,60000,1500,2);

INSERT INTO SALARY_BONUS
VALUES (seq_salary_bonus.NEXTVAL,7000,84000,2500,3);

INSERT INTO SALARY_BONUS
VALUES (seq_salary_bonus.NEXTVAL,5500,66000,1800,4);

INSERT INTO SALARY_BONUS
VALUES (seq_salary_bonus.NEXTVAL,6000,72000,2200,5);



-- EMPLOYEE --

INSERT INTO EMPLOYEE
VALUES (seq_employee.NEXTVAL,'Michael','Johnson','M',32,
        'New York','mjohnson@ems.com','pass101',1,1);

INSERT INTO EMPLOYEE
VALUES (seq_employee.NEXTVAL,'Emma','Wilson','F',28,
        'London','ewilson@ems.com','pass102',2,2);

INSERT INTO EMPLOYEE
VALUES (seq_employee.NEXTVAL,'William','Davis','M',35,
        'Chicago','wdavis@ems.com','pass103',3,3);

INSERT INTO EMPLOYEE
VALUES (seq_employee.NEXTVAL,'Charlotte','Miller','F',30,
        'Berlin','cmiller@ems.com','pass104',4,4);

INSERT INTO EMPLOYEE
VALUES (seq_employee.NEXTVAL,'James','Anderson','M',40,
        'Boston','janderson@ems.com','pass105',5,5);

INSERT INTO EMPLOYEE
VALUES (seq_employee.NEXTVAL,'Sophia','Taylor','F',27,
        'Madrid','staylor@ems.com','pass106',1,1);

INSERT INTO EMPLOYEE
VALUES (seq_employee.NEXTVAL,'Daniel','Thompson','M',33,
        'Paris','dthompson@ems.com','pass107',2,2);

INSERT INTO EMPLOYEE
VALUES (seq_employee.NEXTVAL,'Olivia','Brown','F',29,
        'Dublin','obrown@ems.com','pass108',3,3);

INSERT INTO EMPLOYEE
VALUES (seq_employee.NEXTVAL,'Christopher','Moore','M',37,
        'Toronto','cmoore@ems.com','pass109',4,4);

INSERT INTO EMPLOYEE
VALUES (seq_employee.NEXTVAL,'Isabella','Clark','F',31,
        'Amsterdam','iclark@ems.com','pass110',5,5);



-- QUALIFICATION --

INSERT INTO QUALIFICATION
VALUES (seq_qualification.NEXTVAL,
        'Software Developer',
        'Computer Science Degree',
        DATE '2023-01-15',
        1);

INSERT INTO QUALIFICATION
VALUES (seq_qualification.NEXTVAL,
        'HR Specialist',
        'HR Certification',
        DATE '2022-06-10',
        2);

INSERT INTO QUALIFICATION
VALUES (seq_qualification.NEXTVAL,
        'Financial Analyst',
        'Finance Degree',
        DATE '2021-09-20',
        3);

INSERT INTO QUALIFICATION
VALUES (seq_qualification.NEXTVAL,
        'Marketing Officer',
        'Marketing Diploma',
        DATE '2023-03-05',
        4);

INSERT INTO QUALIFICATION
VALUES (seq_qualification.NEXTVAL,
        'Operations Manager',
        'Management Degree',
        DATE '2020-11-12',
        5);


-- LEAVE --

INSERT INTO LEAVE
VALUES (seq_leave.NEXTVAL,
        DATE '2025-01-15',
        'Medical Leave',
        1);

INSERT INTO LEAVE
VALUES (seq_leave.NEXTVAL,
        DATE '2025-02-20',
        'Annual Vacation',
        2);

INSERT INTO LEAVE
VALUES (seq_leave.NEXTVAL,
        DATE '2025-03-12',
        'Family Emergency',
        3);

INSERT INTO LEAVE
VALUES (seq_leave.NEXTVAL,
        DATE '2025-04-05',
        'Personal Leave',
        4);

INSERT INTO LEAVE
VALUES (seq_leave.NEXTVAL,
        DATE '2025-05-18',
        'Medical Leave',
        5);


-- PAYROLL --

INSERT INTO PAYROLL
VALUES (seq_payroll.NEXTVAL,
        DATE '2025-01-31',
        'Monthly Payroll',
        6500,1,1,1,1);

INSERT INTO PAYROLL
VALUES (seq_payroll.NEXTVAL,
        DATE '2025-02-28',
        'Monthly Payroll',
        5000,2,2,2,2);

INSERT INTO PAYROLL
VALUES (seq_payroll.NEXTVAL,
        DATE '2025-03-31',
        'Monthly Payroll',
        7000,3,3,3,3);

INSERT INTO PAYROLL
VALUES (seq_payroll.NEXTVAL,
        DATE '2025-04-30',
        'Monthly Payroll',
        5500,4,4,4,4);

INSERT INTO PAYROLL
VALUES (seq_payroll.NEXTVAL,
        DATE '2025-05-31',
        'Monthly Payroll',
        6000,5,5,5,5);

INSERT INTO PAYROLL
VALUES (seq_payroll.NEXTVAL,
        DATE '2025-06-30',
        'Monthly Payroll',
        6500,6,1,1,NULL);

INSERT INTO PAYROLL
VALUES (seq_payroll.NEXTVAL,
        DATE '2025-07-31',
        'Monthly Payroll',
        5000,7,2,2,NULL);

INSERT INTO PAYROLL
VALUES (seq_payroll.NEXTVAL,
        DATE '2025-08-31',
        'Monthly Payroll',
        7000,8,3,3,NULL);


COMMIT;