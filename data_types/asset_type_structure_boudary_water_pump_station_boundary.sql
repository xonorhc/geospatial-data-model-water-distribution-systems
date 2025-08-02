BEGIN;
CREATE TABLE IF NOT EXISTS asset_type_structure_boudary_water_pump_station_boundary (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO asset_type_structure_boudary_water_pump_station_boundary
    VALUES (0, 'Unknown'),
    (1, 'Booster station'),
    (2, 'Pump station');
COMMIT;

