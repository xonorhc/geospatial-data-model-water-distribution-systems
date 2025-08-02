BEGIN;
CREATE TABLE IF NOT EXISTS asset_type_water_device_fire_hydrant (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO asset_type_water_device_fire_hydrant
    VALUES (0, 'Unknown'),
    (1, 'Fire hydrant');
COMMIT;

