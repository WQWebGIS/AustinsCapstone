select * from wq.samples;
select * from wq.sample_stations;
select * from wq.sample_characteristics;
select * from wq.nitromixed ORDER BY station_id;

alter table wq.samples
drop column result_comment;

--First, we need to move the uploaded sample CSV to the samples table accordingly
--Nitromixed, for instance.
INSERT INTO wq.samples SELECT * FROM wq.nitromixed;

INSERT into wq.samples (org_id,	
						station_id,	
						station_name,
						characteristic_id,
						characteristic,
						result_value,
						result_unit,
						date_tested,
						replicate_num,
						activity_medium,
						activity_type,
						activity_category,
						rel_depth,
						activity_depth,
						depth_unit,
						sample_fraction,
						value_type,
						analytical_procedure,
						procedure_source,
						matrix) (
				SELECT org_id,	
						station_id,	
						station_name,
						characteristic_id,
						characteristic,
						result_value,
						result_unit,
						date_tested,
						replicate_num,
						activity_medium,
						activity_type,
						activity_category,
						rel_depth,
						activity_depth,
						depth_unit,
						sample_fraction,
						value_type,
						analytical_procedure,
						procedure_source,
						matrix 
		 FROM wq.nitromixed
)