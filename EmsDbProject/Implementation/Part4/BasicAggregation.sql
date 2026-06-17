SELECT d.name,
       COUNT(e.emp_ID) AS total_employees
FROM JOB_DEPARTMENT d, EMPLOYEE e
WHERE d.job_ID = e.job_ID
GROUP BY d.name;

-------------------------------------------

SELECT MIN(amount) AS minimum_salary,
       MAX(amount) AS maximum_salary,
       AVG(amount) AS average_salary
FROM SALARY_BONUS;

-------------------------------------------

SELECT SUM(bonus) AS total_bonus
FROM SALARY_BONUS;