BEGIN;
CREATE TABLE IF NOT EXISTS water_type (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO water_type
    VALUES (0, 'Unknown'),
    (1, 'Potable'),
    (2, 'Irrigation'),
    (3, 'Fire'),
    (4, 'Raw'),
    (5, 'Intermedate'),
    (6, 'Finished');
COMMIT;

