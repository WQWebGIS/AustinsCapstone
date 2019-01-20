SELECT version();
SELECT PostGIS_full_version();


CREATE DATABASE water_quality;
CREATE EXTENSION postgis;
CREATE SCHEMA wq;

CREATE TABLE wq.samples (
  site varchar(20),
  value numeric
);