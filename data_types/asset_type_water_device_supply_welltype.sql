CREATE TABLE IF NOT EXISTS asset_type_water_device_supply_welltype (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);

INSERT INTO asset_type_water_device_supply_welltype
    VALUES (0, 'Unknown'),
    (1, 'Water'),
    (2, 'Monitoring'),
    (3, 'Injection');

