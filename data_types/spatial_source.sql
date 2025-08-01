CREATE TABLE IF NOT EXISTS spatial_source (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);

INSERT INTO spatial_source
    VALUES (0, 'Unknown'),
    (1, 'As-Built'),
    (2, 'CAD'),
    (3, 'Digitized'),
    (4, 'GPS GNSS'),
    (5, 'Field Sketch');

