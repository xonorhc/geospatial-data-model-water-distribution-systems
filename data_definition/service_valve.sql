BEGIN;
CREATE TABLE IF NOT EXISTS service_valve (
    id serial PRIMARY KEY,
    -- TODO: global_id -- Globally unique identifier for the feature
    asset_type smallint REFERENCES asset_type_water_device_service_valve (id) NOT NULL,
    asset_id varchar,
    manufacturer varchar,
    model varchar,
    diameter smallint,
    valve_type smallint REFERENCES water_valve_type (id),
    valve_status smallint REFERENCES pipeline_valve_status (id),
    clockwise_to_close smallint REFERENCES pipeline_valve_close_direction (id),
    turns_to_close numeric,
    operable boolean,
    name varchar,
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
COMMENT ON COLUMN service_valve.id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN service_valve.global_id IS 'Globally unique identifier for the feature';
COMMENT ON COLUMN service_valve.asset_type IS 'Categorization of the type of water distribution asset';
COMMENT ON COLUMN service_valve.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN service_valve.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN service_valve.model IS 'Specific model designation of the asset';
COMMENT ON COLUMN service_valve.diameter IS 'Measurement of the assets diameter';
COMMENT ON COLUMN service_valve.valve_type IS 'Classification of the valve design';
COMMENT ON COLUMN service_valve.valve_status IS 'Current operational status of the valve';
COMMENT ON COLUMN service_valve.clockwise_to_close IS 'Indicates the direction required to close the valve';
COMMENT ON COLUMN service_valve.turns_to_close IS 'Number of turns needed to close the valve';
COMMENT ON COLUMN service_valve.operable IS 'Indicates whether the asset is functional';
COMMENT ON COLUMN service_valve.name IS 'Name or label assigned to the asset';
COMMENT ON COLUMN service_valve.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN service_valve.lifecycle IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN service_valve.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN service_valve.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN service_valve.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN service_valve.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN service_valve.maintained_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN service_valve.geom IS 'Geometric representation of the feature';
COMMENT ON COLUMN service_valve.spatial_source IS 'Describes the source of spatial data for the assets location';
COMMENT ON COLUMN service_valve.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN service_valve.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN service_valve.created_user IS 'User who created the feature';
COMMENT ON COLUMN service_valve.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN service_valve.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN service_valve.last_edited_date IS 'Date and time of the most recent modification to the record';
-- INFO: Indexes
CREATE INDEX idx_service_valve_geom USING gist (geom);
COMMIT;

