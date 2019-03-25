-- Fitting your tessellated grid to the feature

--Fit Bayou Texar Grid
DROP TABLE wq.fisnet_bt_fit
SELECT fn.gid, ST_Intersection(fn.geom, wb.geom) AS geom_grid, wb.gid AS wbid
INTO wq.fisnet_bt_fit
FROM wq.fishnet_bt AS fn, wq.water_bodies AS wb
WHERE ST_Intersects(fn.geom, wb.geom) AND wb.gid = 1;

--Fit Escambia Bay Grid
DROP TABLE wq.fisnet_eb_fit
SELECT fn.gid, ST_Intersection(fn.geom, wb.geom) AS geom_grid, wb.gid AS wbid
INTO wq.fisnet_eb_fit
FROM wq.fishnet_eb AS fn, wq.water_bodies AS wb
WHERE ST_Intersects(fn.geom, wb.geom) AND wb.gid = 2;

DROP TABLE wq.fishnet_bt; DROP TABLE wq.fishnet_eb;
