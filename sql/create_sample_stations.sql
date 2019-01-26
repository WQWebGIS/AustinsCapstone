--TODO: 
-- create sample stations for escambia and bayou texar
-- populate/create point geom from lat/lons 
-- make sure it is in 4326
--See https://postgis.net/docs/ST_MakePoint.html for how to make a geom point from a lat/lon

DROP TABLE wq.sample_stations;

CREATE TABLE wq.sample_stations (
  gid integer,
  site_name varchar(25),
  waterbody_id integer,
  huc integer,
  type varchar(30)
);

--Add geom after creating table
--see https://postgis.net/docs/AddGeometryColumn.html
SELECT AddGeometryColumn ('wq','sample_stations','geom',4326,'POINT',2);


INSERT INTO wq.sample_stations (gid,site_)
VALUES (1,)

