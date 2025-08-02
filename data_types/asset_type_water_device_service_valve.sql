BEGIN;
CREATE TABLE IF NOT EXISTS asset_type_water_device_service_valve (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO asset_type_water_device_service_valve
    VALUES (0, 'Unknown'),
    (1, 'Blow off'),
    (2, 'Flap'),
    (3, 'Hydrant'),
    (4, 'Purge'),
    (5, 'Sampling'),
    (6, 'Service');
COMMIT;

