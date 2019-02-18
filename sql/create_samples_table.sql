
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
  "date_added" timestamp,
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

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200308', 'Pensacola - Escambia Bay', 2, 1, 'Dissolved Oxygen', 7, 'mg/l', 7/8/2003, 03:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'No Entry', 0.2, 'm', 'Total', 'Actual', 'No Entry', 'No Entry', 'Proc 1', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200308', 'Pensacola - Escambia Bay', 2, 1, 'Dissolved Oxygen', 6.8, 'mg/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'No Entry', 0.2, 'm', 'Total', 'Actual', 'No Entry', 'No Entry', 'Proc 1', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200308', 'Pensacola - Escambia Bay', 2, 1, 'Dissolved Oxygen', 5.1, 'mg/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'No Entry', 0.2, 'm', 'Total', 'Actual', 'No Entry', 'No Entry', 'Proc 1', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200308', 'Pensacola - Escambia Bay', 2, 1, 'Dissolved Oxygen', 4.8, 'mg/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'No Entry', 0.2, 'm', 'Total', 'Actual', 'No Entry', 'No Entry', 'Proc 1', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200308', 'Pensacola - Escambia Bay', 2, 2, 'Nitrogen, mixed forms (NH3)+(NH4)+organic+(NO2)+(NO3)', 532.6, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Bottom', 'No Entry', 'No Entry', 'Total', 'Actual', 'No Entry', 'A', '1-2650-03(M)', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200308', 'Pensacola - Escambia Bay', 2, 2, 'Nitrogen, mixed forms (NH3)+(NH4)+organic+(NO2)+(NO3)', 418.6, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Surface', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '1-2650-03(M)', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200308', 'Pensacola - Escambia Bay', 2, 2, 'Nitrogen, mixed forms (NH3)+(NH4)+organic+(NO2)+(NO3)', 530.9, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Bottom', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '1-2650-03(M)', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200308', 'Pensacola - Escambia Bay', 2, 2, 'Nitrogen, mixed forms (NH3)+(NH4)+organic+(NO2)+(NO3)', 668.4, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Surface', 'No Entry', 'No Entry', 'Total', 'Actual', 'No Entry', 'A', '1-2650-03(M)', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200308', 'Pensacola - Escambia Bay', 2, 3, 'Nitrogen, Nitrite (NO2) + Nitrate (NO3) as N', 58.254, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Surface', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '353.2', 'USEPA', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200308', 'Pensacola - Escambia Bay', 2, 3, 'Nitrogen, Nitrite (NO2) + Nitrate (NO3) as N', 71.484, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Bottom', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '353.2', 'USEPA', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200308', 'Pensacola - Escambia Bay', 2, 4, 'Nitrogen, Ammonium (NH4) as N', 6.384, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Surface', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '349', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200308', 'Pensacola - Escambia Bay', 2, 4, 'Nitrogen, Ammonium (NH4) as N', 43.33, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Bottom', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '349', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200305', 'Pensacola - Escambia Bay', 2, 2, 'Nitrogen, mixed forms (NH3)+(NH4)+organic+(NO2)+(NO3)', 626.4, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Bottom', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '1-2650-03(M)', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200305', 'Pensacola - Escambia Bay', 2, 2, 'Nitrogen, mixed forms (NH3)+(NH4)+organic+(NO2)+(NO3)', 824.3, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Bottom', 'No Entry', 'No Entry', 'Total', 'Actual', 'No Entry', 'A', '1-2650-03(M)', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200305', 'Pensacola - Escambia Bay', 2, 2, 'Nitrogen, mixed forms (NH3)+(NH4)+organic+(NO2)+(NO3)', 387.8, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Surface', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '1-2650-03(M)', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200305', 'Pensacola - Escambia Bay', 2, 2, 'Nitrogen, mixed forms (NH3)+(NH4)+organic+(NO2)+(NO3)', 609.3, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Surface', 'No Entry', 'No Entry', 'Total', 'Actual', 'No Entry', 'A', '1-2650-03(M)', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200305', 'Pensacola - Escambia Bay', 2, 3, 'Nitrogen, Nitrite (NO2) + Nitrate (NO3) as N', 75.712, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Surface', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '353.2', 'USEPA', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200305', 'Pensacola - Escambia Bay', 2, 3, 'Nitrogen, Nitrite (NO2) + Nitrate (NO3) as N', 42.336, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Bottom', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '353.2', 'USEPA', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200305', 'Pensacola - Escambia Bay', 2, 4, 'Nitrogen, Ammonium (NH4) as N', 208.04, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Bottom', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '349', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200305', 'Pensacola - Escambia Bay', 2, 4, 'Nitrogen, Ammonium (NH4) as N', 5.754, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Surface', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '349', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200305', 'Pensacola - Escambia Bay', 2, 1, 'Dissolved Oxygen', 6.8, 'mg/l', 7/8/2003, 03:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'No Entry', 0.2, 'm', 'Total', 'Actual', 'No Entry', 'No Entry', 'Proc 1', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200305', 'Pensacola - Escambia Bay', 2, 1, 'Dissolved Oxygen', 5.9, 'mg/l', 7/8/2003, 03:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'No Entry', 0.2, 'm', 'Total', 'Actual', 'No Entry', 'No Entry', 'Proc 1', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200305', 'Pensacola - Escambia Bay', 2, 1, 'Dissolved Oxygen', 3.8, 'mg/l', 7/8/2003, 03:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'No Entry', 0.2, 'm', 'Total', 'Actual', 'No Entry', 'No Entry', 'Proc 1', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200305', 'Pensacola - Escambia Bay', 2, 1, 'Dissolved Oxygen', 6.7, 'mg/l', 7/8/2003, 03:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'No Entry', 0.2, 'm', 'Total', 'Actual', 'No Entry', 'No Entry', 'Proc 1', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200305', 'Pensacola - Escambia Bay', 2, 1, 'Dissolved Oxygen', 0.5, 'mg/l', 7/8/2003, 03:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'No Entry', 0.2, 'm', 'Total', 'Actual', 'No Entry', 'No Entry', 'Proc 1', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200303', 'Pensacola - Escambia Bay', 2, 1, 'Dissolved Oxygen', 5.4, 'mg/l', 7/8/2003, 03:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'No Entry', 0.2, 'm', 'Total', 'Actual', 'No Entry', 'No Entry', 'Proc 1', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200303', 'Pensacola - Escambia Bay', 2, 1, 'Dissolved Oxygen', 5.1, 'mg/l', 7/8/2003, 03:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'No Entry', 0.2, 'm', 'Total', 'Actual', 'No Entry', 'No Entry', 'Proc 1', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200305', 'Pensacola - Escambia Bay', 2, 1, 'Dissolved Oxygen', 6.7, 'mg/l', 7/8/2003, 03:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'No Entry', 0.2, 'm', 'Total', 'Actual', 'No Entry', 'No Entry', 'Proc 1', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200305', 'Pensacola - Escambia Bay', 2, 1, 'Dissolved Oxygen', 6.3, 'mg/l', 7/8/2003, 03:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'No Entry', 0.2, 'm', 'Total', 'Actual', 'No Entry', 'No Entry', 'Proc 1', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200303', 'Pensacola - Escambia Bay', 2, 2, 'Nitrogen, mixed forms (NH3)+(NH4)+organic+(NO2)+(NO3)', 492.5, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Bottom', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '1-2650-03(M)', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200303', 'Pensacola - Escambia Bay', 2, 2, 'Nitrogen, mixed forms (NH3)+(NH4)+organic+(NO2)+(NO3)', 685.6, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Bottom', 'No Entry', 'No Entry', 'Total', 'Actual', 'No Entry', 'A', '1-2650-03(M)', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200303', 'Pensacola - Escambia Bay', 2, 2, 'Nitrogen, mixed forms (NH3)+(NH4)+organic+(NO2)+(NO3)', 469.1, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Surface', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '1-2650-03(M)', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200303', 'Pensacola - Escambia Bay', 2, 2, 'Nitrogen, mixed forms (NH3)+(NH4)+organic+(NO2)+(NO3)', 549.7, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Surface', 'No Entry', 'No Entry', 'Total', 'Actual', 'No Entry', 'A', '1-2650-03(M)', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200303', 'Pensacola - Escambia Bay', 2, 3, 'Nitrogen, Nitrite (NO2) + Nitrate (NO3) as N', 105.1196, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Surface', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '353.2', 'USEPA', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200303', 'Pensacola - Escambia Bay', 2, 3, 'Nitrogen, Nitrite (NO2) + Nitrate (NO3) as N', 117.46, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Bottom', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '353.2', 'USEPA', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200303', 'Pensacola - Escambia Bay', 2, 4, 'Nitrogen, Ammonium (NH4) as N', 13.412, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Bottom', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '349', '21FLFMRI', 'Surface Water')

INSERT INTO wq.samples (org_id, station_id, station_name, waterbody_id, characteristic_id, characteristic, result_value, unit, date, time, time_zone, replicate_num, activity_medium, activity_type, activity_category, relative_depth, activity_depth, depth_unit, sample_fraction, value_type, result_comment, value_qualifier, analytyical_procedure, procedure_source, matrix)
	VALUES ('21FLFMRI', 'PEN200303', 'Pensacola - Escambia Bay', 2, 4, 'Nitrogen, Ammonium (NH4) as N', 10.948, 'ug/l', 7/8/2003, 3:31:00, 'CDT', 0, 'Water', 'Field Msr/Obs', 'Routine Msr/Obs', 'Surface', 'No Entry', 'No Entry', 'Dissolved', 'Actual', 'No Entry', 'A', '349', '21FLFMRI', 'Surface Water')
