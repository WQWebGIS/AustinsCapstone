DROP TABLE wq.samples;

CREATE TABLE wq.samples (
  "org_id" varchar(50),
  "station_id" varchar(50),
  "station_name" varchar(100),
  "characteristic_id" integer,
  "characteristic" varchar(100),
  "result_value" float,
  "result_unit" varchar(10),
  "date_tested" varchar(100),
  "replicate_num" varchar(100),
  "activity_medium" varchar(100),
  "activity_type" varchar(100),
  "activity_category" varchar(100),
  "rel_depth" varchar(100),
  "activity_depth" varchar(100),
  "depth_unit" varchar(10),
  "sample_fraction" varchar(100),
  "value_type" varchar(100),
  "result_comment" varchar(100),
  "value_qualifier" varchar(100),
  "analytical_procedure" varchar(100),
  "procedure_source" varchar(100),
  "matrix" varchar(100)
);

SELECT * FROM wq.samples;
DELETE FROM wq.samples;

CREATE TABLE wq.do (
  "org_id" varchar(50),
  "station_id" varchar(50),
  "station_name" varchar(100),
  "characteristic_id" integer,
  "characteristic" varchar(100),
  "result_value" float,
  "result_unit" varchar(10),
  "date_tested" varchar(100),
  "replicate_num" varchar(100),
  "activity_medium" varchar(100),
  "activity_type" varchar(100),
  "activity_category" varchar(100),
  "rel_depth" varchar(100),
  "activity_depth" varchar(100),
  "depth_unit" varchar(10),
  "sample_fraction" varchar(100),
  "value_type" varchar(100),
  "result_comment" varchar(100),
  "value_qualifier" varchar(100),
  "analytical_procedure" varchar(100),
  "procedure_source" varchar(100),
  "matrix" varchar(100)
);
