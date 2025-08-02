BEGIN;
CREATE TABLE IF NOT EXISTS asset_type_water_device_system_meter (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO asset_type_water_device_system_meter
    VALUES (0, 'Unknown'),
    (1, 'Bulk'),
    (2, 'DMA'),
    (3, 'Emergency connection'),
    (4, 'Pump station');
COMMIT;

