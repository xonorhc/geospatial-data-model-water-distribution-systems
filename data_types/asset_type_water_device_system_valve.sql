BEGIN;
CREATE TABLE IF NOT EXISTS asset_type_water_device_system_valve (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO asset_type_water_device_system_valve
    VALUES (0, 'Unknown'),
    (1, 'Bypass'),
    (2, 'Interconnect'),
    (3, 'Isolation zone'),
    (4, 'Pressure zone'),
    (5, 'Supply'),
    (6, 'System');
COMMIT;

