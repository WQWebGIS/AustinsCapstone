select * from wq.fishnet_bt;
select * from wq.sample_stations;
select * from wq.samples WHERE characteristic_id=3;

select * from wq.fishnet_bt where gid=1582;
select * from wq.sample_stations where station_id like '3302HBT7';

-- Next, SELECT statement that returns the distance between a 
-- given cell and all the sample sites.
-- see https://gis.stackexchange.com/questions/76967/what-is-the-unit-used-in-st-distance
SELECT btg.gid, ss.station_id,  ST_Distance(ss.geom::geography, btg.geom_grid::geography) As cell_site_dist
FROM wq.sample_stations as ss, wq.fishnet_bt_fit as btg
WHERE ss.waterbody_id=1 and btg.gid=58
GROUP BY btg.gid, ss.station_id, ss.geom, btg.geom_grid
ORDER BY cell_site_dist DESC;

--Obtain the average of the 
--characteristic value, grouped by sampling site
SELECT s.station_id, avg(s.result_value) as avg_result
FROM wq.samples as s
WHERE characteristic_id=3
GROUP BY s.station_id  

-- SELECT that obtains the grid id, sample site id, distance between the grid and 
-- sample site, and finally the average chlorophyll a values grouped by all of these values respectively. 
SELECT grid.gid, ss.station_id,  ST_Distance(ss.geom::geography, grid.geom_grid::geography) As cell_site_dist, 
averages.avg_result
FROM wq.sample_stations as ss, wq.fishnet_bt_fit as grid
CROSS JOIN 
	(SELECT s.station_id, avg(s.result_value) as avg_result
		FROM wq.samples as s
		WHERE characteristic_id=3
		GROUP BY s.station_id) as averages
	WHERE ss.station_id=averages.station_id
GROUP BY grid.gid, ss.station_id, cell_site_dist, averages.avg_result
ORDER BY grid.gid;

-- SELECT that obtained the inverse distance weighting for the 
-- average sample values group by the grid id value. 
SELECT grid.gid, 
sum(averages.avg_result/ST_Distance(ss.geom::geography, ST_Centroid(grid.geom_grid)::geography))/sum(1/ST_Distance(ss.geom::geography, ST_Centroid(grid.geom_grid)::geography)) as cell_idw_val
FROM wq.sample_stations as ss, wq.fishnet_bt_fit as grid
CROSS JOIN 
	(SELECT s.station_id, avg(s.result_value) as avg_result
		FROM wq.samples as s
		WHERE characteristic_id=3
		GROUP BY s.station_id) as averages
	WHERE ss.station_id=averages.station_id AND ST_Distance(ss.geom::geography, grid.geom_grid::geography) != 0																							  
GROUP BY grid.gid
ORDER BY cell_idw_val;

--Finish writing and run the SELECT that updates the values interpolated values 
-- (est_value) of bt_grid accordingly
ALTER TABLE wq.fishnet_bt_fit
ADD COLUMN est_nitrogen float;																									  
																									  
UPDATE wq.fishnet_bt_fit
	SET est_nitrogen=subquery.cell_idw_val
	FROM 
		(SELECT grid.gid, 
			sum(averages.avg_result/ST_Distance(ss.geom::geography, ST_Centroid(grid.geom_grid)::geography))/sum(1/ST_Distance(ss.geom::geography, ST_Centroid(grid.geom_grid)::geography)) as cell_idw_val
			FROM wq.sample_stations as ss, wq.fishnet_bt_fit as grid
			CROSS JOIN 
				(SELECT s.station_id, avg(s.result_value) as avg_result
					FROM wq.samples as s
					WHERE characteristic_id=3
					GROUP BY s.station_id) as averages
				WHERE ss.station_id=averages.station_id 																					  
			GROUP BY grid.gid
			ORDER BY cell_idw_val) AS subquery
	WHERE wq.fishnet_bt_fit.gid=subquery.gid;
																									  

																									  

