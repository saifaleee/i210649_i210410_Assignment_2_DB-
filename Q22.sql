SELECT Pi.Lic_num, COUNT(DISTINCT f.Plane_Model_number) AS num_planes_authorized
FROM Pilot Pi
INNER JOIN FLIES f ON Pi.Lic_num = f.Pilot_Lic_num
GROUP BY Pi.Lic_num;