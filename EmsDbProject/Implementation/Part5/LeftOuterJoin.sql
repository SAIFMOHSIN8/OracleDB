SELECT e.emp_ID,
       e.fname,
       e.lname
FROM EMPLOYEE e
         LEFT OUTER JOIN LEAVE l
                         ON e.emp_ID = l.emp_ID
WHERE l.leave_ID IS NULL;

-----------------------------------------------------------

SELECT d.job_ID,
       d.name
FROM JOB_DEPARTMENT d
         LEFT OUTER JOIN SALARY_BONUS s
                         ON d.job_ID = s.job_ID
WHERE s.salary_ID IS NULL;