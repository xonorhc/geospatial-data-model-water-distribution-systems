BEGIN;
CREATE TABLE IF NOT EXISTS water_storage_boundary (
    id serial PRIMARY KEY,
    -- TODO: global_id -- Globally unique identifier for the feature
    asset_type smallint REFERENCES asset_type_structure_boudary_water_storage_boundary (id) NOT NULL,
    asset_id varchar,
    name varchar,
    lifecycle_status smallint REFERENCES lifecycle (id) NOT NULL,
    install_date date,
    inservice_date date,
    retired_date date,
    notes varchar,
    owned_by smallint REFERENCES asset_owner (id) NOT NULL,
    maintained_by smallint REFERENCES asset_manager (id) NOT NULL,
    geom geometry(polygon, 4326),
    -- TODO: shape_area numeric -- Calculated area of the feature's geometry
    -- TODO: shape_length numeric -- Calculated perimeter length of the feature's geometry
    spatial_source smallint REFERENCES spatial_source (id) NOT NULL,
    spatial_confidence smallint REFERENCES spatial_confidence (id) NOT NULL,
    symbol_rotation numeric,
    created_user varchar,
    created_date date,
    last_edited_user varchar,
    last_edited_date date
);
COMMENT ON COLUMN water_storage_boundary.id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN water_storage_boundary.global_id IS 'Globally unique identifier for the feature';
COMMENT ON COLUMN water_storage_boundary.asset_type IS 'Categorization of the type of water distribution asset';
COMMENT ON COLUMN water_storage_boundary.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN water_storage_boundary.name IS 'Descriptive name of the asset';
COMMENT ON COLUMN water_storage_boundary.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN water_storage_boundary.lifecycle IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN water_storage_boundary.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN water_storage_boundary.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN water_storage_boundary.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN water_storage_boundary.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN water_storage_boundary.maintained_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN water_storage_boundary.geom IS 'Geometric representation of the feature';
COMMENT ON COLUMN water_storage_boundary.spatial_source IS 'Describes the source of spatial data for the assets location';
COMMENT ON COLUMN water_storage_boundary.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN water_storage_boundary.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN water_storage_boundary.created_user IS 'User who created the feature';
COMMENT ON COLUMN water_storage_boundary.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN water_storage_boundary.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN water_storage_boundary.last_edited_date IS 'Date and time of the most recent modification to the record';
-- INFO: Indexes
CREATE INDEX idx_water_storage_boundary_geom USING gist (geom);
COMMIT;

