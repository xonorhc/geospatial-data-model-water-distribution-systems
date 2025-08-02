BEGIN;
CREATE TABLE IF NOT EXISTS asset_type_water_junction_fitting (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO asset_type_water_junction_fitting
    VALUES (0, 'Unknown'),
    (1, 'Air and vacuum service'),
    (2, 'Blow off service'),
    (3, 'Comercial service'),
    (4, 'Fire service'),
    (5, 'Hydrant service'),
    (6, 'Industrial service'),
    (7, 'Irrigation service'),
    (8, 'Residential service'),
    (9, 'Sampling service');
COMMIT;

