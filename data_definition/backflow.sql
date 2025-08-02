BEGIN;
CREATE TABLE IF NOT EXISTS blackflow (
    id serial PRIMARY KEY,
    -- TODO: global_id -- Globally unique identifier for the feature
    asset_type smallint REFERENCES asset_type_water_assembly_backflow (id) NOT NULL,
    asset_id varchar,
    manufacturer varchar,
    model varchar,
    locked smallint REFERENCES yes_no (id) NOT NULL,
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
COMMENT ON COLUMN blackflow.id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN blackflow.global_id IS 'Globally unique identifier for the feature';
COMMENT ON COLUMN blackflow.asset_type IS 'Categorization of the backflow asset based on its type';
COMMENT ON COLUMN blackflow.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN blackflow.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN blackflow.model IS 'Specific model designation of the asset';
COMMENT ON COLUMN blackflow.locked IS 'Indicates whether the asset is locked or accessible';
COMMENT ON COLUMN blackflow.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN blackflow.lifecycle IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN blackflow.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN blackflow.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN blackflow.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN blackflow.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN blackflow.maintained_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN blackflow.geom IS 'Geometric representation of the feature';
COMMENT ON COLUMN blackflow.spatial_source IS 'Describes the source of spatial data for the assets location';
COMMENT ON COLUMN blackflow.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN blackflow.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN blackflow.created_user IS 'User who created the feature';
COMMENT ON COLUMN blackflow.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN blackflow.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN blackflow.last_edited_date IS 'Date and time of the most recent modification to the record';
-- INFO: Indexes
CREATE INDEX idx_blackflow_geom USING gist (geom);
COMMIT;

