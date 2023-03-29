select PERSON.Name, sum(SERVICEE.Hours_worked) as total_hrs from PERSON
inner join EMPLOYEE on  EMPLOYEE.p_ssn=PERSON.SSN
inner join SERVICEE on SERVICEE.Emp_id= EMPLOYEE.Emp_id
inner join AIRPLANE on SERVICEE.air_no=AIRPLANE.Reg_no
inner join OWNS on AIRPLANE.Reg_no=OWNS.Plane_id
inner join CORP on owns.Owner_id=Corp_id
where CORP.Name='Acme Corp'
group by PERSON.Name
order by total_hrs