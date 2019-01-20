DROP TABLE wq.water_bodies;

CREATE TABLE wq.water_bodies (
  "gid" integer,
  "site_name" varchar(25),
  "waterbody_id" integer,
  "huc" integer,
  "type" varchar(30)
);

SELECT AddGeometryColumn ('wq','water_bodies','geom',4326,'POLYGON',2);