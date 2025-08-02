BEGIN;
CREATE TABLE IF NOT EXISTS asset_type_water_device_flushing_and_blow_off (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO asset_type_water_device_flushing_and_blow_off
    VALUES (0, 'Unknown'),
    (1, 'Automatic flushing'),
    (2, 'Blow off'),
    (3, 'Fire plug valve'),
    (4, 'Hydrant'),
    (5, 'Post hydrant');
COMMIT;

