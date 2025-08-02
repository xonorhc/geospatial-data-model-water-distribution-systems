BEGIN;
CREATE TABLE IF NOT EXISTS water_service_material (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO water_service_material
    VALUES (0, 'Unknown'),
    (1, 'Cast iron - CAS'),
    (2, 'Copper - COP'),
    (3, 'Ductile iron - DIP'),
    (4, 'Polyvinyl Chloride - PVC'),
    (5, 'Lead - LP');
COMMIT;

