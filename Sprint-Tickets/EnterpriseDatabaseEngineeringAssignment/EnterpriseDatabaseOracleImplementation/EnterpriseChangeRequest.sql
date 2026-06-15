-- Change Request 1

--  EMPLOYEES + DEPARTMENTS + JOBS + LOCATIONS
--                   ↓
--                HR_VIEW
--                   ↓
-- Employee Name | Job Title | Department Name | City
--                   ↓
--                HR Users

----------------------------------------------------------------------------------------------------------------------

-- Change Request 2

-- Department ID -> Procedure -> Calculate Department Average Salary -> Filter Employees Above Average -> Order by Salary DESC -> Display Employee Name & Salary

----------------------------------------------------------------------------------------------------------------------

-- Change Request 3

-- EMPLOYEES -> Salary Update -> TRG_SALARY_AUDIT -> SALARY_AUDIT -> Employee ID | Department ID | Old Salary | New Salary | Username | Timestamp -> Audit Review

----------------------------------------------------------------------------------------------------------------------

-- Change Request 4

-- EMPLOYEES -> JOB_EMP_ABOVE_DEPT_AVG -> Department Average Salary Analysis -> Employee Salary Comparison -> Weekly Report (Friday 4:00 PM) -> Management Review