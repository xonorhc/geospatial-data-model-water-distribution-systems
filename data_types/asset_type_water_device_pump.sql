BEGIN;
CREATE TABLE IF NOT EXISTS asset_type_water_device_pump (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO asset_type_water_device_pump
    VALUES (0, 'Unknown'),
    (1, 'Booster'),
    (2, 'Chemical'),
    (3, 'Primary');
COMMIT;

