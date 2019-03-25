select * from wq.samples;
select * from wq.sample_stations;
select * from wq.sample_characteristics;
select * from wq.nitromixed ORDER BY station_id;

--First, we need to move the uploaded sample CSV to the samples table accordingly
--Nitromixed, for instance.
INSERT into wq.samples (foo_id, bar_id) ( 
  SELECT foo.id, bar.id FROM foo CROSS JOIN bar 
    WHERE type = 'name' AND name IN ('selena', 'funny', 'chip') 
);