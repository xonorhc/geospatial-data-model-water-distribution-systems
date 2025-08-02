BEGIN;
CREATE TABLE IF NOT EXISTS water_pump_type (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO water_pump_type
    VALUES (0, 'Unkown'),
    (1, 'Axial flow'),
    (2, 'Centrifugal'),
    (3, 'Jet'),
    (4, 'Reciprocating'),
    (5, 'Rotary'),
    (6, 'Turbine');
COMMIT;

