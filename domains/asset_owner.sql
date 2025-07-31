CREATE TABLE IF NOT EXISTS asset_owner (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);

INSERT INTO asset_owner
    VALUES (1, 'Our agency'),
    (2, 'Private'),
    (3, 'Other');

