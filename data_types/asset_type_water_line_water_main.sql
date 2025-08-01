CREATE TABLE IF NOT EXISTS asset_type_water_line_water_main (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);

INSERT INTO asset_type_water_line_water_main
    VALUES (0, 'Unknown'),
    (1, 'Distribution main'),
    (2, 'Drain'),
    (3, 'Overflow'),
    (4, 'Production'),
    (5, 'Transmission main');

