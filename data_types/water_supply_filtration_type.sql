CREATE TABLE IF NOT EXISTS water_supply_filtration_type (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);

INSERT INTO water_supply_filtration_type
    VALUES (0, 'Unknown'),
    (1, 'Carbon'),
    (2, 'Reverse osmosis'),
    (3, 'Ultraviolet light'),
    (4, 'Sedment'),
    (5, 'Biological');

