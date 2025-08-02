BEGIN;
CREATE TABLE IF NOT EXISTS pipeline_valve_status (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO pipeline_valve_status
    VALUES (0, 'Closed'),
    (1, 'Open');
COMMIT;

