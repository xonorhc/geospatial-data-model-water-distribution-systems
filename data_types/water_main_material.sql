CREATE TABLE IF NOT EXISTS water_main_material (
    id smallint PRIMARY KEY,
    description varchar NOT NULL
);

INSERT INTO water_main_material
    VALUES (0, 'Unknown'),
    (81, 'Asbestos Cement - AC'),
    (82, 'Brick - BR'),
    (83, 'Cast Iron - CAS'),
    (84, 'Copper - COP'),
    (85, 'Concrete (Non-Reinforced) - CP'),
    (86, 'Concrete Segments (Bolted) - CSB'),
    (87, 'Concrete Segments (Unbolted) - CSU'),
    (88, 'Ductile Iron - DIP'),
    (89, 'Galvanized Pipe - GP'),
    (90, 'Pitch Fiber (Orangeburg) - OB'),
    (91, 'Plastic/Steel Composite - PSC'),
    (92, 'Polyethylene - PE'),
    (93, 'Polypropylene - PP'),
    (94, 'Polyvinyl Chloride - PVC'),
    (95, 'Steel - SP'),
    (96, 'Transite - TTE'),
    (97, 'Wood - WD'),
    (98, 'Pre-stressed Concrete Cylinder Pipe - PCCP'),
    (99, 'Pre-stressed Concrete Embedded Cylinder Pipe AWWA C-301 - PCPE'),
    (100, 'Pre-stressed Concrete Lined Cylinder Pipe AWWA C-301 - PCPL'),
    (101, 'Steel Cylinder Reinforced Concrete Pipe - SRC'),
    (102, 'High Density Polyethylene - HDPE'),
    (103, 'Unreinforced Concrete Pipe - URC'),
    (104, 'Fiberglass Reinforced Pipe - FRP'),
    (105, 'Reinforced Concrete Pipe - RCP'),
    (106, 'Corrugated Pipe - CORR'),
    (107, 'Plastic - PLA'),
    (108, 'Non - Plastic - NPLA');

