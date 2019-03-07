SELECT * FROM wq.sample_stations;
SELECT ST_AsGeoJSON(geom) FROM wq.sample_stations WHERE gid=5;

DROP FUNCTION wq.get_wb_json(i integer);

--Function to recieve water body id and 
--then pass by the geojson records of each station on it
--For the record this was tricky
--https://stackoverflow.com/questions/24220409/postgres-return-json-from-a-function
--https://stackoverflow.com/questions/7945932/how-to-return-result-of-a-select-inside-a-function-in-postgresql
CREATE OR REPLACE FUNCTION wq.get_wb_json(i integer)  
  RETURNS TABLE (
    jsb   jsonb) AS
	$func$ 
	BEGIN 
		RETURN QUERY
		SELECT jsonb_build_object(
			'type',       'Feature',
			'id',         gid,
			'geometry',   ST_AsGeoJSON(geom)::jsonb,
			'properties', to_jsonb(row) - 'gid' - 'geom' 
		) FROM (SELECT * FROM wq.sample_stations WHERE waterbody_id=$1) row;
	END;
$func$  LANGUAGE plpgsql;

SELECT * FROM wq.get_wb_json(2);

