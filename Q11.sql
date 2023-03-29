SELECT Pe.Name
FROM Person Pe
INNER JOIN EMPLOYEE on Pe.SSN = EMPLOYEE.p_ssn
INNER JOIN AIRPLANE pt ON EMPLOYEE.ptype = pt.Of_type
INNER JOIN SERVICEE s ON pt.Reg_no = s.air_no
WHERE s.Work_code LIKE '%2'
union
SELECT c.Name
FROM CORP c
inner join OWNS on OWNS.Owner_id= Corp_id 
inner join airplane on OWNS.Plane_id=AIRPLANE.Reg_no
inner join SERVICEE on SERVICEE.air_no=AIRPLANE.Reg_no
where SERVICEE.Maintainance_date='0001-01-01'