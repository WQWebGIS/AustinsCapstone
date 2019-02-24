SELECT * FROM wq.sample_stations;
SELECT ST_AsGeoJSON(geom) FROM wq.sample_stations WHERE gid=5;

SELECT jsonb_build_object(
    'type',       'Feature',
    'id',         gid,
    'geometry',   ST_AsGeoJSON(geom)::jsonb,
    'properties', to_jsonb(row) - 'gid' - 'geom'
) FROM (SELECT * FROM wq.sample_stations WHERE waterbody_id='1') row;