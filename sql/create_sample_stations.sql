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
    VALUES (3, '21FLBFA', 'FL Dept of Environmental Protection , Bream Fisherman Assoc.', '3302HC11', 'BAYVIEW PARK PIER BAYOU TEXAR', 'ESCAMBIA', 1, 'Estuary', '30.431272167644792', '-87.190522940886396', 'NAD83', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (4, 'WHWQA', 'Washington High Water Quality Academy', 'Site1', '12th Ave Pumping Station', 'ESCAMBIA', 1, 'Estuary', '30.460083', '-87.209111', 'NAD83', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (5, 'WHWQA', 'Washington High Water Quality Academy', 'Site2', 'Hyde Park Road', 'ESCAMBIA', 1, 'Estuary', '30.440389', '-87.187167', 'NAD83', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (6, 'WHWQA', 'Washington High Water Quality Academy', 'Site3', 'Boat Launch (Oyster Barn)', 'ESCAMBIA', 1, 'Estuary', '30.427584', '-87.186944', 'NAD83', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (7, 'WHWQA', 'Washington High Water Quality Academy', 'Site4', 'Dog Beach at Bayview Park', 'ESCAMBIA', 1, 'Estuary', '30.431167', '-87.190778', 'NAD83', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (8, '21FLKWAT', 'Florida LAKEWATCH', 'ESC-BA-TEX-1', 'Escambia-Bayou Texar-1', 'ESCAMBIA', 1, 'Estuary', '30.45200000', '-87.20030000', 'WGS84', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (9, '21FLKWAT', 'Florida LAKEWATCH', 'ESC-BA-TEX-2', 'Escambia-Bayou Texar-2', 'ESCAMBIA', 1, 'Estuary', '30.44560000', '-87.18780000', 'WGS84', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (10, '21FLKWAT', 'Florida LAKEWATCH', 'ESC-BA-TEX-3', 'Escambia-Bayou Texar-3', 'ESCAMBIA', 1, 'Estuary', '30.43440000', '-87.18600000', 'WGS84', 'null');
	
INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (11, '21FLKWAT', 'Florida LAKEWATCH', 'ESC-BA-SOUTH-1', 'Escambia-Bayou Texar South-1', 'ESCAMBIA', 1, 'Estuary', '30.42768333', '-87.18998333', 'WGS84', 'null');
	
INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (12, '21FLKWAT', 'Florida LAKEWATCH', 'ESC-BA-SOUTH-2', 'Escambia-Bayou Texar South-2', 'ESCAMBIA', 1, 'Estuary', '30.42441667', '-87.18851667', 'WGS84', 'null');
	
INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (13, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302HBT1', 'Upper Bayou Texar TMDL  wbid 738-1', 'ESCAMBIA', 1, 'Estuary', '30.45808333', '-87.20508333', 'WGS84', '3140105');	

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (14, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302HBT7', 'lower Bayou Texar TMDL  wbid 738-7', 'ESCAMBIA', 1, 'Estuary', '30.42491667', '-87.18758333', 'WGS84', '3140105');	

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (15, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302HBT6', 'Upper Bayou Texar TMDL  wbid 738-6', 'ESCAMBIA', 1, 'Estuary', '30.42716667', '-87.18863889', 'WGS84', '3140105');	

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (16, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302HBT2', 'Upper Bayou Texar TMDL  wbid 738-2', 'ESCAMBIA', 1, 'Estuary', '30.45183333', '-87.19919444', 'WGS84', '3140105');	


--Escambia Bay Stations
INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (17, '21FLFMRI', 'Fish and Wildlife Research Institute \/ FWC', 'PEN200308', 'Pensacola - Escambia Bay', 'SANTA ROSA', 2, 'Estuary', '30.449994380561932', '-87.099995185381616', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (18, '21FLFMRI', 'Fish and Wildlife Research Institute \/ FWC', 'PEN200305', 'Pensacola - Escambia Bay', 'SANTA ROSA', 2, 'Estuary', '30.449994382174836', '-87.149995171405564', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (19, '21FLFMRI', 'Fish and Wildlife Research Institute \/ FWC', 'PEN200303', 'Pensacola - Escambia Bay', 'SANTA ROSA', 2, 'Estuary', '30.509994367870192', '-87.119995177205482', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (20, '21FLFMRI', 'Fish and Wildlife Research Institute \/ FWC', 'PEN200302', 'Pensacola - Escambia Bay', 'SANTA ROSA', 2, 'Estuary', '30.519994365972895', '-87.129995173977676', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (21, '21FLFMRI', 'Fish and Wildlife Research Institute \/ FWC', 'PEN200301', 'Pensacola - Escambia Bay', 'SANTA ROSA', 2, 'Estuary', '30.539994361856301', '-87.13999517031661', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (22, '21FLFMRI', 'Fish and Wildlife Research Institute \/ FWC', 'STR200301', 'StateNonTrend - Escambia Bay', 'SANTA ROSA', 2, 'Estuary', '30.539994361856301', '-87.13999517031661', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (23, '21FLFMRI', 'Fish and Wildlife Research Institute \/ FWC', 'STR200426', 'Escambia Bay', 'SANTA ROSA', 2, 'Estuary', '30.519994365324788', '-87.109995179569239', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (24, '21FLGPC', 'Gulf Power Company (Florida)', 'ER5R', 'W side of river 0.93 m upstream of Plant Crist intake canal', 'ESCAMBIA', 2, 'River\/Stream', '30.572656467348402', '-87.224205205366374', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (25, '21FLGPC', 'Gulf Power Company (Florida)', 'ER6R', 'W side of river at confluence with Thompson Bayou', 'ESCAMBIA', 2, 'River\/Stream', '30.5622620494293', '-87.217335567737379', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (26, '21FLGPC', 'Gulf Power Company (Florida)', 'ER8R', 'At Highway 90 bridge, west side of river', 'ESCAMBIA', 2, 'River\/Stream', '30.548514361752044', '-87.194999344574825', 'NAD83', 'null');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (27, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '330200A4', 'ESCAMBIA BAY S FLORIDATOWN PIER', 'SANTA ROSA', 2, 'Estuary', '30.580688793526093', '-87.161514602535064', 'NAD83', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (28, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '330200A4', 'ESCAMBIA BAY S FLORIDATOWN PIER', 'SANTA ROSA', 2, 'Estuary', '30.580688793526093', '-87.161514602535064', 'NAD83', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (29, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302661', 'Escambia Bay-SE of I10 Bridge (Shoreline)', 'SANTA ROSA', 2, 'Estuary', '30.53016667', '-87.12802778', 'WGS84', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (30, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302662', 'Escambia Bay-SE of I10 Bridge (Shoreline)', 'SANTA ROSA', 2, 'Estuary', '30.52927778', '-87.12338889', 'WGS84', '3140105');
			
INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (31, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302663', 'Escambia Bay-SE of I10 Bridge (Shoreline)', 'SANTA ROSA', 2, 'Estuary', '30.52541667', '-87.10988889', 'WGS84', '3140105');
	
INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (32, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302664', 'Escambia Bay-SE of I10 Bridge (Shoreline)', 'SANTA ROSA', 2, 'Estuary', '30.52272222', '-87.1068333', 'WGS84', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (33, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302665', 'Escambia Bay-SE of I10 Bridge (Shoreline)', 'SANTA ROSA', 2, 'Estuary', '30.52475000', '-87.11030556', 'WGS84', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (34, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302B548A3', 'Escambia Bay sect. B TMDL WBID site 548A-3', 'ESCAMBIA', 2, 'Estuary', '30.53333333', '-87.18333333', 'WGS84', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (35, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302G5548B6', 'Mid Escambia Bay TMDL wbid site 548B-6 South of spoil/ICW', 'SANTA ROSA', 2, 'Estuary', '30.45802778', '-87.12472222', 'WGS84', '3140105');
	
INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (36, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302G5548B7', 'Mid Escambia Bay TMDL wbid site 548B-7 @ Spoil Area in ICW', 'SANTA ROSA', 2, 'Estuary', '30.47683333', '-87.12675000', 'WGS84', '3140105');
	
INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (37, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302C548A5', 'Escambia Bay sect. C TMDL WBID site 548A-5', 'SANTA ROSA', 2, 'Estuary', '30.52913889', '-87.13072222', 'WGS84', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (38, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302E548A4', 'Escambia Bay sect. E TMDL WBID site 548A-A', 'SANTA ROSA', 2, 'Estuary', '30.51963889', '-87.10772222', 'WGS84', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (39, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302C548A2', 'Escambia Bay sect. C TMDL WBID site 548A-2', 'SANTA ROSA', 2, 'Estuary', '30.55005556', '-87.14161111', 'WGS84', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (40, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302A548A1', 'Escambia Bay sect. C TMDL WBID site 548A-1', 'SANTA ROSA', 2, 'Estuary', '30.57011111', '-87.15663889', 'WGS84', '3140105');

INSERT INTO wq.sample_stations (gid, org_id, org_name, station_id, station_name, county, waterbody_id, primary_type, latitude, longitude, datum, huc)
    VALUES (41, '21FLPNS', 'FL Dept. of Environmental Protection, Northwest District', '3302C548A6', 'Escambia Bay sect. C TMDL WBID site 548A-6', 'SANTA ROSA', 2, 'Estuary', '30.58159722', '-87.17827222', 'WGS84', '3140105');


--Set Stations GEOM

UPDATE wq.sample_stations
SET geom=st_SetSrid(st_MakePoint(longitude, latitude), 4326)
