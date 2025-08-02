BEGIN;
CREATE TABLE IF NOT EXISTS pressure_valve (
    id serial PRIMARY KEY,
    -- TODO: global_id -- Globally unique identifier for the feature
    asset_type smallint REFERENCES asset_type_water_device_pressure_valve (id) NOT NULL,
    asset_id varchar,
    manufacturer varchar,
    model varchar,
    diameter smallint,
    pressure numeric,
    lifecycle_status smallint REFERENCES lifecycle (id) NOT NULL,
    install_date date,
    inservice_date date,
    retired_date date,
    notes varchar,
    owned_by smallint REFERENCES asset_owner (id) NOT NULL,
    maintained_by smallint REFERENCES asset_manager (id) NOT NULL,
    geom geometry(point, 4326),
    spatial_source smallint REFERENCES spatial_source (id) NOT NULL,
    spatial_confidence smallint REFERENCES spatial_confidence (id) NOT NULL,
    symbol_rotation numeric,
    created_user varchar,
    created_date date,
    last_edited_user varchar,
    last_edited_date date
);
COMMENT ON COLUMN pressure_valve.id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN pressure_valve.global_id IS 'Globally unique identifier for the feature';
COMMENT ON COLUMN pressure_valve.asset_type IS 'Categorization of the asset based on its function or type';
COMMENT ON COLUMN pressure_valve.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN pressure_valve.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN pressure_valve.model IS 'Specific model designation of the asset';
COMMENT ON COLUMN pressure_valve.diameter IS 'Measurement of the assets diameter';
COMMENT ON COLUMN pressure_valve.pressure IS 'Pressure rating or capacity of the valve';
COMMENT ON COLUMN pressure_valve.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN pressure_valve.lifecycle IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN pressure_valve.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN pressure_valve.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN pressure_valve.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN pressure_valve.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN pressure_valve.maintained_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN pressure_valve.geom IS 'Geometric representation of the feature';
COMMENT ON COLUMN pressure_valve.spatial_source IS 'Describes the source of spatial data for the assets location';
COMMENT ON COLUMN pressure_valve.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN pressure_valve.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN pressure_valve.created_user IS 'User who created the feature';
COMMENT ON COLUMN pressure_valve.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN pressure_valve.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN pressure_valve.last_edited_date IS 'Date and time of the most recent modification to the record';
-- INFO: Indexes
CREATE INDEX idx_pressure_valve_geom USING gist (geom);
COMMIT;

