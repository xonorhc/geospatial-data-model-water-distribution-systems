BEGIN;
CREATE TABLE IF NOT EXISTS water_main_material (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);
INSERT INTO water_main_material
    VALUES (0, 'Unknown'),
    (1, 'Asbestos Cement - AC'),
    (2, 'Brick - BR'),
    (3, 'Cast Iron - CAS'),
    (4, 'Copper - COP'),
    (5, 'Concrete (Non-Reinforced) - CP'),
    (6, 'Concrete Segments (Bolted) - CSB'),
    (7, 'Concrete Segments (Unbolted) - CSU'),
    (8, 'Ductile Iron - DIP'),
    (9, 'Galvanized Pipe - GP'),
    (10, 'Pitch Fiber (Orangeburg) - OB'),
    (11, 'Plastic/Steel Composite - PSC'),
    (12, 'Polyethylene - PE'),
    (13, 'Polypropylene - PP'),
    (14, 'Polyvinyl Chloride - PVC'),
    (15, 'Steel - SP'),
    (16, 'Transite - TTE'),
    (17, 'Wood - WD'),
    (18, 'Pre-stressed Concrete Cylinder Pipe - PCCP'),
    (19, 'Pre-stressed Concrete Embedded Cylinder Pipe AWWA C-301 - PCPE'),
    (20, 'Pre-stressed Concrete Lined Cylinder Pipe AWWA C-301 - PCPL'),
    (21, 'Steel Cylinder Reinforced Concrete Pipe - SRC'),
    (22, 'High Density Polyethylene - HDPE'),
    (23, 'Unreinforced Concrete Pipe - URC'),
    (24, 'Fiberglass Reinforced Pipe - FRP'),
    (25, 'Reinforced Concrete Pipe - RCP'),
    (26, 'Corrugated Pipe - CORR'),
    (27, 'Plastic - PLA'),
    (28, 'Non - Plastic - NPLA');
COMMIT;

