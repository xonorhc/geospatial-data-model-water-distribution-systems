BEGIN;
CREATE TABLE IF NOT EXISTS lifecycle (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO lifecycle
    VALUES (0, 'Unknow'),
    (1, 'Proposed'),
    (2, 'Approved'),
    (3, 'Under construction'),
    (4, 'In service'),
    (5, 'To be retired'),
    (6, 'Abandoned'),
    (7, 'Retired'),
    (8, 'Removed'),
    (9, 'Out of service');
COMMIT;

