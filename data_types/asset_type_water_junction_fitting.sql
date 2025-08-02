BEGIN;
CREATE TABLE IF NOT EXISTS asset_type_water_junction_fitting (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO asset_type_water_junction_fitting
    VALUES (0, 'Unknown'),
    (1, 'Clamp'),
    (2, 'Corporation stop'),
    (3, 'Coupling'),
    (4, 'Cross'),
    (5, 'Elbow'),
    (6, 'End cap'),
    (7, 'Expansion joint'),
    (8, 'Flange'),
    (9, 'Plug'),
    (10, 'Reducer'),
    (11, 'Reducing cross'),
    (12, 'Reducing Tee'),
    (13, 'Saddle'),
    (14, 'Screw'),
    (15, 'Sleeve'),
    (16, 'Tap'),
    (17, 'Tapping sleeve'),
    (18, 'Tee'),
    (19, 'Transition'),
    (20, 'Weld'),
    (21, 'Wye');
COMMIT;

