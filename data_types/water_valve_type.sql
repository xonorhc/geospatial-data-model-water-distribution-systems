BEGIN;
CREATE TABLE IF NOT EXISTS water_valve_type (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO water_valve_type
    VALUES (0, 'Unknown'),
    (1, 'Ball'),
    (2, 'Butterfly'),
    (3, 'Cone'),
    (4, 'Gate'),
    (5, 'Plug');
COMMIT;

