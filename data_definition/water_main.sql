BEGIN;
CREATE TABLE IF NOT EXISTS water_main (
    id serial PRIMARY KEY,
    -- TODO: global_id -- Globally unique identifier for the feature
    asset_type smallint REFERENCES asset_type_water_line_water_main (id) NOT NULL,
    asset_id varchar,
    manufacturer varchar,
    model varchar,
    diameter smallint,
    material smallint REFERENCES water_main_material (id),
    water_type smallint REFERENCES water_type (id),
    measured_length numeric,
    lifecycle_status smallint REFERENCES lifecycle (id) NOT NULL,
    install_date date,
    inservice_date date,
    retired_date date,
    notes varchar,
    owned_by smallint REFERENCES asset_owner (id) NOT NULL,
    maintained_by smallint REFERENCES asset_manager (id) NOT NULL,
    geom geometry(linestring, 4326),
    -- TODO: shape_length numeric -- Length of the geometry representing the feature
    spatial_source smallint REFERENCES spatial_source (id) NOT NULL,
    spatial_confidence smallint REFERENCES spatial_confidence (id) NOT NULL,
    symbol_rotation numeric,
    created_user varchar,
    created_date date,
    last_edited_user varchar,
    last_edited_date date
);
COMMENT ON COLUMN water_main.id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN water_main.global_id IS 'Globally unique identifier for the feature';
COMMENT ON COLUMN water_main.asset_type IS 'Categorization of the water main based on its function';
COMMENT ON COLUMN water_main.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN water_main.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN water_main.model IS 'Specific model designation of the asset';
COMMENT ON COLUMN water_main.diameter IS 'Measurement of the water mains width';
COMMENT ON COLUMN water_main.material IS 'Type of material used to construct the water main';
COMMENT ON COLUMN water_main.water_type IS 'Classification of the water main based on its water type';
COMMENT ON COLUMN water_main.measured_length IS 'Recorded length of the water main';
COMMENT ON COLUMN water_main.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN water_main.lifecycle IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN water_main.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN water_main.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN water_main.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN water_main.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN water_main.maintained_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN water_main.geom IS 'Geometric representation of the feature';
COMMENT ON COLUMN water_main.spatial_source IS 'Describes the source of spatial data for the assets location';
COMMENT ON COLUMN water_main.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN water_main.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN water_main.created_user IS 'User who created the feature';
COMMENT ON COLUMN water_main.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN water_main.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN water_main.last_edited_date IS 'Date and time of the most recent modification to the record';
-- INFO: Indexes
CREATE INDEX idx_water_main_geom USING gist (geom);
COMMIT;

