-- FUNCTION: wq.get_interp_json(integer)

-- DROP FUNCTION wq.get_interp_json(integer);

CREATE OR REPLACE FUNCTION wq.get_interp_json(
	i integer)
    RETURNS TABLE(jsb jsonb) 
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
    ROWS 1000
AS $BODY$ 
	BEGIN 
		IF (i=1) THEN
			RETURN QUERY
			SELECT jsonb_build_object(
				'type',       'Feature',
				'id',         gid,
				'geometry',   ST_AsGeoJSON(geom)::jsonb,
				'properties', to_jsonb(row) - 'gid' - 'geom' 
			) FROM (SELECT * FROM wq.fishnet_bt_fit) row;
		ELSE
			RETURN QUERY
			SELECT jsonb_build_object(
				'type',       'Feature',
				'id',         gid,
				'geometry',   ST_AsGeoJSON(geom)::jsonb,
				'properties', to_jsonb(row) - 'gid' - 'geom' 
			) FROM (SELECT * FROM wq.fishnet_eb_fit) row;
		END IF;
	END;
$BODY$;

ALTER FUNCTION wq.get_wb_json(integer)
    OWNER TO postgres;

select * from wq.get_interp_json(1);
