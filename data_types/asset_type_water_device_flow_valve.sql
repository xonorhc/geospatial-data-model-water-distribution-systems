BEGIN;
CREATE TABLE IF NOT EXISTS asset_type_water_device_flow_valve (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO asset_type_water_device_flow_valve
    VALUES (0, 'Unknown'),
    (1, 'Air gap'),
    (2, 'Altitude'),
    (3, 'Check');
COMMIT;

