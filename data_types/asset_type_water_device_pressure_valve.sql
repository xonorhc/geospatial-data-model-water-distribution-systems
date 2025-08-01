CREATE TABLE IF NOT EXISTS asset_type_water_device_pressure_valve (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);

INSERT INTO asset_type_water_junction_fitting
    VALUES (0, 'Unknown'),
    (1, 'Air and vacuum'),
    (2, 'Air release'),
    (3, 'Combination air'),
    (4, 'Pressure limiting'),
    (5, 'Pressure reducing'),
    (6, 'Pressure release'),
    (7, 'Pressure sustaining'),
    (8, 'Surge');

