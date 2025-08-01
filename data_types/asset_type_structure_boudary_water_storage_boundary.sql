CREATE TABLE IF NOT EXISTS asset_type_structure_boudary_water_storage_boundary (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);

INSERT INTO asset_type_structure_boudary_water_storage_boundary
    VALUES (0, 'Unknown'),
    (1, 'Hydropneumatic tank'),
    (2, 'Reservoir'),
    (3, 'Retention area'),
    (4, 'Storage tank'),
    (5, 'Surge tank'),
    (6, 'Tower');

