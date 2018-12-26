CREATE DATABASE water_quality;
CREATE EXTENSION postgis;
CREATE SCHEMA wq;

CREATE TABLE wq.samples (
  site varchar(20),
  value numeric
);