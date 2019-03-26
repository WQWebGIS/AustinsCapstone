-- FUNCTION: wq.get_wb_json(integer)

-- DROP FUNCTION wq.get_wb_json(integer);

CREATE OR REPLACE FUNCTION wq.get_wb_json(
	i integer)
    RETURNS TABLE(jsb jsonb) 
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
    ROWS 1000
AS $BODY$ 
	BEGIN 
		RETURN QUERY
		SELECT jsonb_build_object(
			'type',       'Feature',
			'id',         gid,
			'geometry',   ST_AsGeoJSON(geom)::jsonb,
			'properties', to_jsonb(row) - 'gid' - 'geom' 
		) FROM (SELECT * FROM wq.sample_stations WHERE waterbody_id=$1) row;
	END;
$BODY$;

ALTER FUNCTION wq.get_wb_json(integer)
    OWNER TO postgres;
