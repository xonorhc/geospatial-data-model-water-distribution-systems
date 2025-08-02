BEGIN;
CREATE TABLE IF NOT EXISTS asset_type_structure_boudary_water_supply_boundary (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO asset_type_structure_boudary_water_supply_boundary
    VALUES (0, 'Unknown'),
    (1, 'Interconnect'),
    (2, 'Treatment plant'),
    (3, 'Well');
COMMIT;

