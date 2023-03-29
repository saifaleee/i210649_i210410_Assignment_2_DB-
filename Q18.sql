Select PLANE_TYPE.Model_number, Count(*) As TotalPlanes
from AIRPLANE
INNER JOIN PLANE_TYPE ON Airplane.Reg_no =PLANE_TYPE.Reg_no
Group BY PLANE_TYPE.Model_number