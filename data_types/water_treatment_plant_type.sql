CREATE TABLE IF NOT EXISTS water_treatment_plant_type (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);

INSERT INTO water_treatment_plant_type
    VALUES (1, 'Groundwater'),
    (2, 'Surface water'),
    (3, 'Desalination');

