CREATE TABLE IF NOT EXISTS water_hydrant_service_diameter (
    id smallint PRIMARY KEY,
    value numeric,
    description varchar NOT NULL
);

INSERT INTO water_hydrant_service_diameter
    VALUES (0, 0.0, 'Unknown'),
    (1, 4, E'4\"'),
    (2, 4.5, E'4 1/2\"'),
    (3, 5.25, E'5 1/4\"'),
    (4, 6, E'6\"'),
    (5, 8, E'8\"'),
    (6, 10, E'10\"');

