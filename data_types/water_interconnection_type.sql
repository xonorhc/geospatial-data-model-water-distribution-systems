CREATE TABLE IF NOT EXISTS water_interconnection_type (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);

INSERT INTO water_interconnection_type
    VALUES (1, 'Buy'),
    (2, 'Seil'),
    (3, 'Buy or seil');

