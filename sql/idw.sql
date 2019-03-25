
-- Next, SELECT statement that returns the distance between a 
-- given cell and all the sample sites.
SELECT btg.id, ss.site,  ST_Distance(ss.geom, btg.geom) As cell_site_dist
FROM btwq.sample_sites as ss, btwq.bt_grid as btg 
GROUP BY btg.id, ss.site, ss.geom, btg.geom
ORDER BY btg.id;

-- Task 3: Finish writing and run the SELECT that obtained the average of the 
-- chlorophyll values, grouped by sampling site
SELECT bts.site, avg(bts.chloro_a) as avg_chloro_a
FROM btwq.btwq_samples as bts
GROUP BY bts.site  

-- Task 4: 
-- Finish writing and run the SELECT that obtains the grid id, sample site id, distance between the grid and 
-- sample site, and finally the average chlorophyll a values grouped by all of these values respectively. 
SELECT btg.id, ss.site,  ST_Distance(ss.geom, btg.geom) As cell_site_dist, bts.avg_chloro_a
FROM btwq.sample_sites as ss, btwq.bt_grid as btg
CROSS JOIN 
	(SELECT site, avg(chloro_a) as avg_chloro_a
	FROM btwq.btwq_samples
	GROUP BY site) as bts
	WHERE ss.site=bts.site
GROUP BY btg.id, ss.site, ss.geom, btg.geom, bts.avg_chloro_a
ORDER BY btg.id;

-- Task 5: Finish writing and run the SELECT that obtained the inverse distance weighting for the 
-- average chlorophyll values group by the grid id value. 
SELECT btg.id, sum(bts.avg_chloro_a/ST_Distance(ss.geom, btg.geom))/sum(1/ST_Distance(ss.geom, btg.geom)) as cell_idw_val 
FROM btwq.sample_sites as ss, btwq.bt_grid as btg
CROSS JOIN 
	(SELECT site, avg(chloro_a) as avg_chloro_a
	FROM btwq.btwq_samples
	GROUP BY site) as bts
	WHERE ss.site=bts.site
GROUP BY btg.id 
ORDER BY btg.id;

--Task 6: Finish writing and run the SELECT that updates the values interpolated values 
-- (est_value) of bt_grid accordingly
UPDATE btwq.bt_grid
	SET est_value=subquery.cell_idw_val
	FROM 
		(SELECT btg.id, sum(bts.avg_chloro_a/ST_Distance(ss.geom, btg.geom))/sum(1/ST_Distance(ss.geom, btg.geom)) as cell_idw_val 
		FROM btwq.sample_sites as ss, btwq.bt_grid as btg
		CROSS JOIN 
			(SELECT site, avg(chloro_a) as avg_chloro_a
			FROM btwq.btwq_samples
			GROUP BY site) as bts
			WHERE ss.site=bts.site
		GROUP BY btg.id) AS subquery
	WHERE btwq.bt_grid.id=subquery.id;


