BEGIN;
CREATE TABLE IF NOT EXISTS fire_hydrant (
    id serial PRIMARY KEY,
    -- TODO: global_id -- Globally unique identifier for the feature
    asset_type smallint REFERENCES asset_type_water_device_fire_hydrant (id) NOT NULL,
    asset_id varchar,
    manufacturer varchar,
    model varchar,
    diameter smallint REFERENCES water_hydrant_service_diameter (id) NOT NULL,
    nozzle_diameter numeric,
    public_view smallint REFERENCES yes_no (id) NOT NULL,
    nickname varchar,
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
COMMENT ON COLUMN fire_hydrant.id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN fire_hydrant.global_id IS 'Globally unique identifier for the feature';
COMMENT ON COLUMN fire_hydrant.asset_type IS 'Categorization of the type of water distribution asset';
COMMENT ON COLUMN fire_hydrant.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN fire_hydrant.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN fire_hydrant.model IS 'Specific model designation of the asset';
COMMENT ON COLUMN fire_hydrant.diameter IS 'Measurement of the main diameter of the fire hydrant';
COMMENT ON COLUMN fire_hydrant.nozzle_diameter IS 'Measurement of the nozzle diameter of the fire hydrant';
COMMENT ON COLUMN fire_hydrant.public_view IS 'Visibility of the fire hydrant to the public';
COMMENT ON COLUMN fire_hydrant.nickname IS 'Informal name or alias for the fire hydrant';
COMMENT ON COLUMN fire_hydrant.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN fire_hydrant.lifecycle IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN fire_hydrant.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN fire_hydrant.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN fire_hydrant.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN fire_hydrant.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN fire_hydrant.maintained_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN fire_hydrant.geom IS 'Geometric representation of the feature';
COMMENT ON COLUMN fire_hydrant.spatial_source IS 'Describes the source of spatial data for the assets location';
COMMENT ON COLUMN fire_hydrant.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN fire_hydrant.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN fire_hydrant.created_user IS 'User who created the feature';
COMMENT ON COLUMN fire_hydrant.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN fire_hydrant.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN fire_hydrant.last_edited_date IS 'Date and time of the most recent modification to the record';
-- INFO: Indexes
CREATE INDEX idx_fire_hydrant_geom USING gist (geom);
COMMIT;

