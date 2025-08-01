CREATE TABLE IF NOT EXISTS asset_type_water_junction_fitting (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);

INSERT INTO asset_type_water_junction_fitting (description)
    VALUES ('Unknown'),
    ('Clamp'),
    ('Corporation stop'),
    ('Coupling'),
    ('Cross'),
    ('Elbow'),
    ('End cap'),
    ('Expansion joint'),
    ('Flange'),
    ('Plug'),
    ('Reducer'),
    ('Reducing cross'),
    ('Reducing Tee'),
    ('Saddle'),
    ('Screw'),
    ('Sleeve'),
    ('Tap'),
    ('Tapping sleeve'),
    ('Tee'),
    ('Transition'),
    ('Weld'),
    ('Wye');

