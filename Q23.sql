--#1 List all the Airplanes that currently need to be serviced ( work code like)
Select AIRPLANE.Reg_no, Airplane.Of_type
from Airplane
inner join SERVICEE on Airplane.Reg_no = SERVICEE.air_no
WHERE SERVICEE.Work_code LIKE '%2'


--#2 What are the top 3 hangers with the largest capacity ?
SELECT TOP 3 Number, Capacity
FROM HANGER
ORDER BY Capacity DESC;

--#3 Who are  the top 3 employees with the highest salary

SELECT TOP 3 Pe.Name, Salary
FROM Person Pe
INNER JOIN EMPLOYEE emp ON Pe.SSN = emp.P_ssn
ORDER BY SALARY Desc

--#4 List all the Employees who have a night shift and who are currently working on work code 321
Select *
from EMPLOYEE
Inner Join SERVICEE on SERVICEE.Emp_id = Employee.Emp_id
where Work_code = 321 AND Shift_time = 'Night'