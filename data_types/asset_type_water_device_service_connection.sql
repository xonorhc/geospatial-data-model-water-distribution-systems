BEGIN;
CREATE TABLE IF NOT EXISTS asset_type_water_device_service_connection (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO asset_type_water_device_service_connection
    VALUES (0, 'Unknown'),
    (1, 'Commercial'),
    (2, 'Fire'),
    (3, 'Industrial'),
    (4, 'Irrigation'),
    (5, 'Residential');
COMMIT;

