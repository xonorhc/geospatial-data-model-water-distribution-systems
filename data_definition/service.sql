BEGIN;
CREATE TABLE IF NOT EXISTS service (
    id serial PRIMARY KEY,
    -- TODO: global_id -- Globally unique identifier for the feature
    asset_type smallint REFERENCES asset_type_water_line_service (id) NOT NULL,
    asset_id varchar,
    manufacturer varchar,
    model varchar,
    diameter smallint,
    material smallint REFERENCES water_service_material (id) NOT NULL,
    water_type smallint REFERENCES water_type (id) NOT NULL,
    measured_length numeric, -- Recorded length of the asset
    -- TODO: shape_length numeric -- Length of the geometry associated with the feature
    lifecycle_status smallint REFERENCES lifecycle (id) NOT NULL,
    install_date date,
    inservice_date date,
    retired_date date,
    notes varchar,
    owned_by smallint REFERENCES asset_owner (id) NOT NULL,
    maintained_by smallint REFERENCES asset_manager (id) NOT NULL,
    geom geometry(polygon, 4326),
    spatial_source smallint REFERENCES spatial_source (id) NOT NULL,
    spatial_confidence smallint REFERENCES spatial_confidence (id) NOT NULL,
    symbol_rotation numeric,
    created_user varchar,
    created_date date,
    last_edited_user varchar,
    last_edited_date date
);
COMMENT ON COLUMN service.id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN service.global_id IS 'Globally unique identifier for the feature';
COMMENT ON COLUMN service.asset_type IS 'Categorization of the asset based on its function or type';
COMMENT ON COLUMN service.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN service.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN service.model IS 'Specific model designation of the asset';
COMMENT ON COLUMN service.diameter IS 'Measurement of the assets diameter';
COMMENT ON COLUMN service.material IS 'Composition of the assets construction material';
COMMENT ON COLUMN service.water_type IS 'Classification of the water type associated with the asset';
COMMENT ON COLUMN service.measured_length IS 'Recorded length of the asset';
COMMENT ON COLUMN service.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN service.lifecycle IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN service.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN service.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN service.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN service.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN service.maintained_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN service.geom IS 'Geometric representation of the feature';
COMMENT ON COLUMN service.spatial_source IS 'Describes the source of spatial data for the assets location';
COMMENT ON COLUMN service.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN service.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN service.created_user IS 'User who created the feature';
COMMENT ON COLUMN service.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN service.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN service.last_edited_date IS 'Date and time of the most recent modification to the record';
-- INFO: Indexes
CREATE INDEX idx_service_geom USING gist (geom);
COMMIT;

