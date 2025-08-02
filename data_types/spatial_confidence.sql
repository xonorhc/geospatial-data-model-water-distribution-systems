BEGIN;
CREATE TABLE IF NOT EXISTS spatial_confidence (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO spatial_confidence
    VALUES (0, 'Unknown'),
    (1, 'High'),
    (2, 'Medium'),
    (3, 'Low');
COMMIT;

