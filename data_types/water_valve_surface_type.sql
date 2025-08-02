BEGIN;
CREATE TABLE IF NOT EXISTS water_valve_surface_type (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO water_valve_surface_type
    VALUES (0, 'Unknown'),
    (1, 'Asphalt'),
    (2, 'Brick'),
    (3, 'Concrete'),
    (4, 'Dirt'),
    (5, 'Grass'),
    (6, 'Gravel'),
    (7, 'Other');
COMMIT;

