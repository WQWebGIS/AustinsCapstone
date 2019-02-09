--TODO: 
-- create sample stations for escambia and bayou texar
-- populate/create point geom from lat/lons 
-- make sure it is in 4326
--See https://postgis.net/docs/ST_MakePoint.html for how to make a geom point from a lat/lon

DROP TABLE wq.sample_stations;

CREATE TABLE wq.sample_stations (
  "gid" integer,
  "org_id" varchar(30),
  "org_name" varchar(100),
  "station_id" varchar(30),
  "station_name" varchar(60),
  "county" varchar(30),
  "waterbody_id" varchar(30),
  "primary_type" varchar(30),
  "latitude" float, 
  "longitude" float,
  "datum" varchar(30),
  "huc" varchar(30)
);

--Can waterbody be an integer when it includes letters or does it not need to be a string instead?

--Add geom after creating table
--see https://postgis.net/docs/AddGeometryColumn.html
SELECT AddGeometryColumn ('wq','sample_stations','geom',4326,'POINT',2);

--Bayou Texar Stations
INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (1, '21FLBFA', 'FL Dept of Environmental Protection , Bream Fisherman Assoc.', '33020HF1', 'BAYOU TEXAR AT 12TH AVE BRIDGE', 'ESCAMBIA', 1, 'River\/Stream', '30.460022161843458', '-87.20874515455985', 'NAD83', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (2, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302HC11', 'BAYVIEW PARK PIER, BAYOU TEXAR', 'ESCAMBIA', 1, 'Estuary', '30.431212277660066', '-87.190584660871707', 'NAD83', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (3, '21FLBFA', 'FL Dept of Environmental Protection , Bream Fisherman Assoc.', '3302HC11', 'BAYVIEW PARK PIER  BAYOU TEXAR', 'ESCAMBIA', 1, 'Estuary', '30.431272167644792', '-87.190522940886396', 'NAD83', '3140105');

--Escambia Bay Stations
INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (4, '21FLFMRI', 'Fish and Wildlife Research Institute \/ FWC', 'PEN200308', 'Pensacola - Escambia Bay', 'SANTA ROSA', 2, 'Estuary', '30.449994380561932', '-87.099995185381616', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (5, '21FLFMRI', 'Fish and Wildlife Research Institute \/ FWC', 'PEN200305', 'Pensacola - Escambia Bay', 'SANTA ROSA', 2, 'Estuary', '30.449994382174836', '-87.149995171405564', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (6, '21FLFMRI', 'Fish and Wildlife Research Institute \/ FWC', 'PEN200303', 'Pensacola - Escambia Bay', 'SANTA ROSA', 2, 'Estuary', '30.509994367870192', '-87.119995177205482', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (7, '21FLFMRI', 'Fish and Wildlife Research Institute \/ FWC', 'PEN200302', 'Pensacola - Escambia Bay', 'SANTA ROSA', 2, 'Estuary', '30.519994365972895', '-87.129995173977676', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (8, '21FLFMRI', 'Fish and Wildlife Research Institute \/ FWC', 'PEN200301', 'Pensacola - Escambia Bay', 'SANTA ROSA', 2, 'Estuary', '30.539994361856301', '-87.13999517031661', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (9, '21FLFMRI', 'Fish and Wildlife Research Institute \/ FWC', 'STR200301', 'StateNonTrend - Escambia Bay', 'SANTA ROSA', 2, 'Estuary', '30.539994361856301', '-87.13999517031661', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (10, '21FLFMRI', 'Fish and Wildlife Research Institute \/ FWC', 'STR200426', 'Escambia Bay', 'SANTA ROSA', 2, 'Estuary', '30.519994365324788', '-87.109995179569239', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (11, '21FLGPC', 'Gulf Power Company (Florida)', 'ER5R', 'W side of river 0.93 m upstream of Plant Crist intake canal', 'ESCAMBIA', 2, 'River\/Stream', '30.572656467348402', '-87.224205205366374', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (12, '21FLGPC', 'Gulf Power Company (Florida)', 'ER6R', 'W side of river at confluence with Thompson Bayou', 'ESCAMBIA', 2, 'River\/Stream', '30.5622620494293', '-87.217335567737379', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (13, '21FLGPC', 'Gulf Power Company (Florida)', 'ER8R', 'At Highway 90 bridge, west side of river', 'ESCAMBIA', 2, 'River\/Stream', '30.548514361752044', '-87.194999344574825', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (14, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '330200A4', 'ESCAMBIA BAY S FLORIDATOWN PIER', 'SANTA ROSA', 2, 'Estuary', '30.580688793526093', '-87.161514602535064', 'NAD83', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (15, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '33030F13', 'E BAY 200 YDS FROM BARNARDS PIER', 'SANTA ROSA', 2, 'Estuary', '30.433294347578151', '-86.891695134386339', 'NAD83', '3140105');

--Set Stations GEOM

UPDATE wq.sample_stations
SET geom=st_SetSrid(st_MakePoint(longitude, latitude), 4326)
