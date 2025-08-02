BEGIN;
CREATE TABLE IF NOT EXISTS pump (
    id serial PRIMARY KEY,
    -- TODO: global_id -- Globally unique identifier for the feature
    asset_type smallint REFERENCES asset_type_water_device_pump (id) NOT NULL,
    asset_id varchar,
    manufacturer varchar,
    model varchar,
    pump_type smallint REFERENCES water_pump_type (id),
    iniet_diameter smallint,
    outlet_diameter smallint,
    rated_pressure numeric,
    rated_flow numeric,
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
COMMENT ON COLUMN pump.id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN pump.global_id IS 'Globally unique identifier for the feature';
COMMENT ON COLUMN pump.asset_type IS 'Categorization of the asset based on its function or type';
COMMENT ON COLUMN pump.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN pump.name IS 'Name or label assigned to the pump';
COMMENT ON COLUMN pump.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN pump.model IS 'Specific model designation of the asset';
COMMENT ON COLUMN pump.pump_type IS 'Classification of the pump based on its design';
COMMENT ON COLUMN pump.iniet_diameter IS 'Measurement of the inlet diameter of the pump';
COMMENT ON COLUMN pump.outlet_diameter IS 'Measurement of the outlet diameter of the pump';
COMMENT ON COLUMN pump.rated_pressure IS 'Maximum pressure rating for the pump';
COMMENT ON COLUMN pump.rated_flow IS 'Flow rate specification for the pump';
COMMENT ON COLUMN pump.operable IS 'Indicates whether the pump is functional';
COMMENT ON COLUMN pump.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN pump.lifecycle IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN pump.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN pump.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN pump.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN pump.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN pump.maintained_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN pump.geom IS 'Geometric representation of the feature';
COMMENT ON COLUMN pump.spatial_source IS 'Describes the source of spatial data for the assets location';
COMMENT ON COLUMN pump.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN pump.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN pump.created_user IS 'User who created the feature';
COMMENT ON COLUMN pump.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN pump.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN pump.last_edited_date IS 'Date and time of the most recent modification to the record';
-- INFO: Indexes
CREATE INDEX idx_pump_geom USING gist (geom);
COMMIT;

