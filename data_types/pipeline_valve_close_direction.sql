BEGIN;
CREATE TABLE IF NOT EXISTS pipeline_valve_close_direction (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO pipeline_valve_close_direction
    VALUES (0, 'Counter clockwise'),
    (1, 'Clockwise');
COMMIT;

