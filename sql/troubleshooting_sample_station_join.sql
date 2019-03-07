SELECT wqss.org_id, wqss.station_id, 
wqnm.station_id, wqnm.result_value, wqss.waterbody_id 
FROM wq.sample_stations wqss
JOIN wq.nitromixed as wqnm on wqnm.station_id=wqss.station_id
ORDER BY wqss.waterbody_id 

select * from wq.sample_stations wqss

select * from wq.do as wqdo 
where station_name like '%Escambia%'

select * from wq.nitromixed as wqnm 
where station_name like '%Texar%'