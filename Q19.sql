SELECT S.air_no As Plane_id, COUNT( DISTINCT S.air_no) AS num_of_Times_serviced
FROM SERVICEE S
GROUP BY S.air_no;