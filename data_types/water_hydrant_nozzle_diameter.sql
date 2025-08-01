CREATE TABLE IF NOT EXISTS water_hydrant_nozzle_diameter (
    id smallint PRIMARY KEY,
    value numeric,
    description varchar NOT NULL
);

INSERT INTO water_hydrant_nozzle_diameter
    VALUES (0, 0.0, 'Unknown'),
    (1, 2.5, E'4\"'),
    (2, 4.5, E'4 1/2\"'),
    (3, 5, E'5\"'),
    (4, 6, E'6\"'),
    (5, 4, s E'4\"'),
    (6, 5.25, E'5 1/4\"');

