-- Task 2: Determine the origin points for your fishnet. 
SELECT ST_XMin(ST_Extent(geom)) AS xmin, 
ST_YMin(ST_Extent(geom)) AS ymin 
FROM wq.water_bodies where gid=1;
--Write your answers below:
--"-87.208717524002"
--"30.4187184290029"

-- Task 3: Next, find the lengths in the x and y direction. 
SELECT ST_XMax(ST_Extent(geom))-ST_XMin(ST_Extent(geom)) AS length, 
ST_YMax(ST_Extent(geom))-ST_YMin(ST_Extent(geom)) AS width
FROM wq.water_bodies where gid=1;
--Answers:
--"0.0260819119999951"
--"0.0417292090000991"

-- Task 4: Calculate the lengths of each side of the individual cells within your fishnet. 
SELECT (ST_XMax(ST_Extent(geom))-ST_XMin(ST_Extent(geom)))/100 AS cell_length,  
(ST_YMax(ST_Extent(geom))-ST_YMin(ST_Extent(geom)))/100 as cell_width
FROM wq.water_bodies where gid=1;
-- Answers:
--"0.000260819119999951"
--"0.000417292090000991"

-- Task 5: Create a table called fishnet that is populated/created by 
-- running the ST_CreateFishnet function
DROP TABLE wq.fishnet_bt;
CREATE TABLE wq.fishnet_bt AS
SELECT row_number() over() as gid, cells.geom
FROM wq.ST_CreateFishnet(100, 100, 0.000260819119999951, 0.000417292090000991, -87.2087175240026, 30.4187184290029) AS cells;
ALTER TABLE wq.fishnet_bt ADD COLUMN id SERIAL PRIMARY KEY;
ALTER TABLE wq.fishnet_bt
    ALTER COLUMN geom TYPE geometry(Polygon, 4326) USING ST_SetSRID(geom, 4326);