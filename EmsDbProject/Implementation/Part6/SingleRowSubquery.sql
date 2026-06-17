SELECT e.emp_ID,
       e.fname,
       e.lname,
       s.amount,
       (SELECT AVG(amount)
        FROM SALARY_BONUS) AS average_salary
FROM EMPLOYEE e
         JOIN SALARY_BONUS s
              ON e.salary_ID = s.salary_ID
WHERE s.amount >
      (
          SELECT AVG(amount)
          FROM SALARY_BONUS
      );

------------------------------------------------------

SELECT d.name,
       SUM(p.total_amount) AS total_payroll
FROM JOB_DEPARTMENT d
         JOIN PAYROLL p
              ON d.job_ID = p.job_ID
GROUP BY d.name
HAVING SUM(p.total_amount) =
       (
           SELECT MAX(total_payroll)
           FROM
               (
                   SELECT SUM(total_amount) AS total_payroll
                   FROM PAYROLL
                   GROUP BY job_ID
               )
       );