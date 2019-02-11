
DROP TABLE wq.samples;

CREATE TABLE wq.samples (
  "org_id" varchar(30),
  "station_id" integer,
  "station_name" varchar(60),
  "waterbody_id" integer,
  "characteristic_id" integer,
  "characteristic" varchar(30),
  "result_value" float,
  "unit" varchar(10),
  "date" date,
  "time" time,
  "time_zone" varchar(30),
  "replicate_num" varchar(30),
  "activity_medium" varchar(30),
  "activity_type" varchar(30),
  "activity_category" varchar(30),
  "relative_depth" varchar(15),
  "activity_depth" float,
  "depth_unit" varchar(10),
  "sample_fraction" varchar(30),
  "value_type" varchar(30),
  "result_comment" varchar(100),
  "value_qualifier" varchar(30),
  "analytyical_procedure" varchar(30),
  "procedure_source" varchar(30),
  "matrix" varchar(30)
);



