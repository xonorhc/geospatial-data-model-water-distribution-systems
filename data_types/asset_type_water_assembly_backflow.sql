BEGIN;
CREATE TABLE IF NOT EXISTS asset_type_water_assembly_backflow (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO asset_type_water_assembly_backflow
    VALUES (0, 'Unknown'),
    (1, 'Double check detector'),
    (2, 'Double check valve'),
    (3, 'Reduced pressure detector'),
    (4, 'Reduced pressure zone');
COMMIT;

