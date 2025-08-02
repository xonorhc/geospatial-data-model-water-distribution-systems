BEGIN;
CREATE TABLE IF NOT EXISTS yes_no (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO yes_no
    VALUES (0, 'Unknown'),
    (1, 'Yes'),
    (2, 'No');
COMMIT;

