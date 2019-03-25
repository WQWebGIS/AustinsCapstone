-- Task 2: Determine the origin points for your fishnet. 
SELECT ST_XMin(ST_Extent(geom)) AS xmin, 
ST_YMin(ST_Extent(geom)) AS ymin 
FROM wq.water_bodies where gid=2;
--Write your answers below:
--"-87.191764154002"
--"30.446688493003"

-- Task 4: Calculate the lengths of each side of the individual cells within your fishnet. 
SELECT (ST_XMax(ST_Extent(geom))-ST_XMin(ST_Extent(geom)))/100 AS cell_length,  
(ST_YMax(ST_Extent(geom))-ST_YMin(ST_Extent(geom)))/100 as cell_width
FROM wq.water_bodies where gid=2;
-- Answers:
--"0.00100550830999907"
--"0.00135893839000001"

-- Task 5: Create a table called fishnet that is populated/created by 
-- running the ST_CreateFishnet function
DROP TABLE wq.fishnet_eb;
CREATE TABLE wq.fishnet_eb AS
SELECT row_number() over() as gid, cells.geom
FROM wq.ST_CreateFishnet(100, 100, 0.00100550830999907, 0.001358938390000011, -87.191764154002, 30.446688493003) AS cells;
ALTER TABLE wq.fishnet_eb ADD COLUMN id SERIAL PRIMARY KEY;
ALTER TABLE wq.fishnet_eb
    ALTER COLUMN geom TYPE geometry(Polygon, 4326) USING ST_SetSRID(geom, 4326);