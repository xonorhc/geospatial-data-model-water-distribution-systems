CREATE TABLE IF NOT EXISTS asset_manager (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);

INSERT INTO asset_manager
    VALUES (1, 'Our agency'),
    (2, 'Private'),
    (3, 'Other');

