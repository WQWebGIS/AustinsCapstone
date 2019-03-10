DROP TABLE wq.sample_characteristics;

CREATE TABLE wq.sample_characteristics (
  "characteristic_id" integer,
  "name" varchar(60)
);

INSERT INTO wq.sample_characteristics (characteristic_id, name)
    VALUES (1, 'Dissolved Oxygen');
	
INSERT INTO wq.sample_characteristics (characteristic_id, name)
    VALUES (2, 'Dissolved Oxygen saturation');
	
INSERT INTO wq.sample_characteristics (characteristic_id, name)
    VALUES (3, 'Nitrogen, mixed forms (NH3)+(NH4)+organic+(NO2)+(NO3)');

INSERT INTO wq.sample_characteristics (characteristic_id, name)
    VALUES (4, 'Nitrogen, Nitrite (NO2) + Nitrate (NO3) as N');

INSERT INTO wq.sample_characteristics (characteristic_id, name)
    VALUES (5, 'Nitrogen, Ammonium (NH4) as N');
	
INSERT INTO wq.sample_characteristics (characteristic_id, name)
    VALUES (6, 'Nitrogen, Nitrite (NO2) as N');

INSERT INTO wq.sample_characteristics (characteristic_id, name)
    VALUES (7, 'Nitrogen, Nitrate (NO3) as N');
	
INSERT INTO wq.sample_characteristics (characteristic_id, name)
    VALUES (8, 'Nitrogen, ammonia as N');

INSERT INTO wq.sample_characteristics (characteristic_id, name)
    VALUES (9, 'Nitrogen, organic');
	
INSERT INTO wq.sample_characteristics (characteristic_id, name)
    VALUES (10, 'Nitrogen, Kjeldahl');

INSERT INTO wq.sample_characteristics (characteristic_id, name)
    VALUES (11, 'Nitrogen, ammonia (NH3) as NH3');
	
INSERT INTO wq.sample_characteristics (characteristic_id, name)
    VALUES (12, 'Total Nitrogen');