SELECT emp_ID,
       fname,
       lname
FROM EMPLOYEE
WHERE job_ID IN
      (
          SELECT job_ID
          FROM SALARY_BONUS
          WHERE bonus > 500
      );

--------------------------

SELECT e.emp_ID,
       e.fname,
       e.lname,
       s.amount
FROM EMPLOYEE e
         JOIN SALARY_BONUS s
              ON e.salary_ID = s.salary_ID
WHERE s.amount > ALL
      (
          SELECT sb.amount
          FROM SALARY_BONUS sb
                   JOIN JOB_DEPARTMENT d
                        ON sb.job_ID = d.job_ID
          WHERE d.name = 'Maintenance'
      );

-- No Maintenance department exists in current seed data.
-- Query used to demonstrate ALL operator.

-----------------------------

SELECT e.emp_ID,
       e.fname,
       e.lname,
       s.amount
FROM EMPLOYEE e
         JOIN SALARY_BONUS s
              ON e.salary_ID = s.salary_ID
WHERE s.amount > ANY
      (
          SELECT sb.amount
          FROM SALARY_BONUS sb
                   JOIN JOB_DEPARTMENT d
                        ON sb.job_ID = d.job_ID
          WHERE d.job_dept = 'HR'
      );

