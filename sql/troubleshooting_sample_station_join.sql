SELECT wqss.org_id, wqss.station_id, 
wqdo.station_id, wqdo.result_value, wqss.waterbody_id 
FROM wq.sample_stations wqss
JOIN wq.do as wqdo on wqdo.station_id=wqss.station_id
ORDER BY wqss.waterbody_id 

select * from wq.sample_stations wqss

select * from wq.do as wqdo 
where station_name like '%Escambia%'

select * from wq.do as wqdo 
where station_name like '%Texar%'