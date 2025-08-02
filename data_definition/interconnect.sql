BEGIN;
CREATE TABLE IF NOT EXISTS interconnect (
    id serial PRIMARY KEY,
    -- TODO: global_id -- Globally unique identifier for the feature
    asset_type smallint REFERENCES water_interconnection_type (id) NOT NULL,
    asset_id varchar,
    manufacturer varchar,
    model varchar,
    name varchar,
    permitted_flow numeric,
    available_flow numeric,
    emergency_only REFERENCES yes_no (id),
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
COMMENT ON COLUMN interconnect.id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN interconnect.global_id IS 'Globally unique identifier for the feature';
COMMENT ON COLUMN interconnect.asset_type IS 'Categorization of the asset based on its function or type';
COMMENT ON COLUMN interconnect.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN interconnect.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN interconnect.model IS 'Specific model designation of the asset';
COMMENT ON COLUMN interconnect.name IS 'Descriptive name or label for the asset';
COMMENT ON COLUMN interconnect.permitted_flow IS 'Maximum flow rate allowed for the asset';
COMMENT ON COLUMN interconnect.available_flow IS 'Flow rate currently available for use';
COMMENT ON COLUMN interconnect.emergency_only IS 'Indicates if the asset is for emergency use only';
COMMENT ON COLUMN interconnect.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN interconnect.lifecycle IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN interconnect.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN interconnect.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN interconnect.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN interconnect.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN interconnect.maintained_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN interconnect.geom IS 'Geometric representation of the feature';
COMMENT ON COLUMN interconnect.spatial_source IS 'Describes the source of spatial data for the assets location';
COMMENT ON COLUMN interconnect.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN interconnect.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN interconnect.created_user IS 'User who created the feature';
COMMENT ON COLUMN interconnect.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN interconnect.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN interconnect.last_edited_date IS 'Date and time of the most recent modification to the record';
-- INFO: Indexes
CREATE INDEX idx_interconnect_geom USING gist (geom);
COMMIT;

