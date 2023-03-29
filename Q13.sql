SELECT Pe.Name
FROM Person Pe
INNER JOIN Pilot Pi ON Pe.SSN = Pi.P_ssn
INNER JOIN PLANE_TYPE pt ON Pi.Lic_num = pt.P_Lic_num
INNER JOIN SERVICEE s ON pt.Reg_no = s.air_no
WHERE s.Work_code LIKE '%1'