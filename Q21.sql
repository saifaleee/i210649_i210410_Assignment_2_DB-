SELECT ow.Owner_id, COUNT( DISTINCT ow.Plane_id) AS num_of_planes_Owned
FROM OWNS ow
GROUP BY ow.Owner_id;