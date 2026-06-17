SELECT *
FROM EMPLOYEE
WHERE age BETWEEN 25 AND 40
ORDER BY lname;

-----------------------------------

SELECT e.fname,
       e.lname,
       d.name,
       p.total_amount
FROM EMPLOYEE e,
     JOB_DEPARTMENT d,
     PAYROLL p
WHERE e.emp_ID = p.emp_ID
  AND d.job_ID = p.job_ID
  AND p.total_amount > 5000;

-----------------------------------

SELECT e.fname,
       e.lname,
       l.reason
FROM EMPLOYEE e,
     LEAVE l
WHERE e.emp_ID = l.emp_ID
  AND LOWER(l.reason) LIKE '%sick%';

-----------------------------------

SELECT *
FROM JOB_DEPARTMENT d
WHERE NOT EXISTS
          (
              SELECT *
              FROM EMPLOYEE e
              WHERE e.job_ID = d.job_ID
          );