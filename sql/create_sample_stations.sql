--TODO: 
-- create sample stations for escambia and bayou texar
-- populate/create point geom from lat/lons 
-- make sure it is in 4326
--See https://postgis.net/docs/ST_MakePoint.html for how to make a geom point from a lat/lon

DROP TABLE wq.sample_stations

CREATE TABLE wq.sample_stations (
  "gid" integer,
  "org_id" varchar(30),
  "org_name" varchar(100),
  "station_id" varchar(30),
  "station_name" varchar(30),
  "county" varchar(30),
  "waterbody_id" varchar(30),
  "primary_type" varchar(30),
  "datum" varchar(30),
  "huc" integer
);

--Can waterbody be an integer when it includes letters or does it not need to be a string instead?

--Add geom after creating table
--see https://postgis.net/docs/AddGeometryColumn.html
SELECT AddGeometryColumn ('wq','sample_stations','geom',4326,'POINT',2);


INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, datum, huc)
    VALUES (1, '21FLBFA', 'FL Dept of Environmental Protection , Bream Fisherman Assoc.', '33020HF1', 'BAYOU TEXAR AT 12TH AVE BRIDGE', 'ESCAMBIA', '738', 'River\/Stream', 'NAD83', '3140105');


