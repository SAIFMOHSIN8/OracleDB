SELECT e.emp_ID,
       e.fname || ' ' || e.lname AS full_name,
       d.name AS department_name,
       q.position AS job_title,
       s.amount AS salary_amount,
       MAX(l.leave_date) AS latest_leave_date
FROM EMPLOYEE e
         INNER JOIN JOB_DEPARTMENT d
                    ON e.job_ID = d.job_ID
         INNER JOIN QUALIFICATION q
                    ON e.emp_ID = q.emp_ID
         INNER JOIN SALARY_BONUS s
                    ON e.salary_ID = s.salary_ID
         INNER JOIN PAYROLL p
                    ON e.emp_ID = p.emp_ID
         INNER JOIN LEAVE l
                    ON e.emp_ID = l.emp_ID
GROUP BY e.emp_ID,
         e.fname,
         e.lname,
         d.name,
         q.position,
         s.amount;