SELECT d.name,
       AVG(e.age) AS average_age
FROM JOB_DEPARTMENT d, EMPLOYEE e
WHERE d.job_ID = e.job_ID
GROUP BY d.name
HAVING AVG(e.age) > 30;

-----------------------------------

SELECT position,
       COUNT(*) AS total_employees
FROM QUALIFICATION
GROUP BY position
HAVING COUNT(*) > 2;

-----------------------------------

SELECT TO_CHAR(payroll_date,'Month') AS month,
       SUM(total_amount) AS total_payroll
FROM PAYROLL
GROUP BY TO_CHAR(payroll_date,'Month')
HAVING SUM(total_amount) > 20000;