CREATE VIEW VW_EMPLOYEE_SUMMARY AS
SELECT e.emp_ID,
       e.fname || ' ' || e.lname AS full_name,
       e.gender,
       e.age,
       d.name AS department_name,
       q.position AS job_title
FROM EMPLOYEE e
         JOIN JOB_DEPARTMENT d
              ON e.job_ID = d.job_ID
         JOIN QUALIFICATION q
              ON e.emp_ID = q.emp_ID;

-------------------------------------------------

SELECT *
FROM VW_EMPLOYEE_SUMMARY
WHERE gender = 'F'
  AND age > 30;

SELECT fname,
       lname,
       gender,
       age
FROM EMPLOYEE;

-------------------------------------------------

INSERT INTO VW_EMPLOYEE_SUMMARY
VALUES
    (
        11,
        'Sarah Parker',
        'F',
        32,
        'Finance',
        'Financial Analyst'
    );

Error at Command Line : 29 Column : 1
Error report -
SQL Error: ORA-01779: cannot modify a column which maps to a non key-preserved table

https://docs.oracle.com/error-help/db/ora-01779/01779. 00000 -  "cannot modify a column which maps to a non key-preserved table"
*Cause :  An attempt was made to insert or update columns of a join view which map to a non-key-preserved table.
*Action :  Modify the underlying base tables directly.
More Details :  https://docs.oracle.com/error-help/db/ora-01779/