SELECT FLIES.Pilot_Lic_num, COUNT(*) AS num_planes_authorized
FROM FLIES
INNER JOIN PLANE_TYPE ON FLIES.Plane_Model_number = PLANE_TYPE.Model_number
GROUP BY FLIES.Pilot_Lic_num;