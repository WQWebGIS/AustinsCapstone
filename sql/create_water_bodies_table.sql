DROP TABLE wq.water_bodies;

CREATE TABLE wq.water_bodies (
  "gid" serial,
  "site_name" varchar(25),
  "waterbody_id" integer,
  "huc" integer,
  "type" varchar(30)
);

--SELECT AddGeometryColumn ('wq','water_bodies','geom',4326,'MULTIPOLYGON',4);
SELECT AddGeometryColumn ('wq','water_bodies','geom',4326,'POLYGON',2);

INSERT INTO wq.water_bodies (site_name, waterbody_id, type)
    VALUES ('Bayou Texar', 1, 'Bayou');

INSERT INTO wq.water_bodies (site_name, waterbody_id, type)
    VALUES ('Escambia Bay', 2, 'Bay');

--copy geometry column from one table to another
--see https://stackoverflow.com/questions/33926371/how-to-get-the-geometry-data-out-of-one-table-into-another
select * from wq.bayou_texar4326;
select * from wq.water_bodies;

--This is trick, but ArcGIS Pro likes a 2-d so stick to that
--nice resource on forcing this: http://www.codedirection.com/convert-multipolygon-geometry/
UPDATE wq.water_bodies AS t
SET geom = ST_SetSRID(st_astext((ST_Dump(ST_Force2D(s.geom))).geom), 4326)
FROM wq.bayou_texar4326 AS s
WHERE t.gid = 1;

UPDATE wq.water_bodies AS t
SET geom = ST_SetSRID(st_astext((ST_Dump(ST_Force2D(s.geom))).geom), 4326)
FROM wq.escambia_bay4326 AS s
WHERE t.gid = 2;

