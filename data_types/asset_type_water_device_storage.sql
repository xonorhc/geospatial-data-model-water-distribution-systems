BEGIN;
CREATE TABLE IF NOT EXISTS asset_type_water_device_storage (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO asset_type_water_device_storage
    VALUES (0, 'Unknown'),
    (1, 'Hydropneumatic tank'),
    (2, 'Reservoir'),
    (3, 'Standpipe'),
    (4, 'Storage tank'),
    (5, 'Surge tank'),
    (6, 'Tower');
COMMIT;

