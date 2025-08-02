BEGIN;
CREATE TABLE IF NOT EXISTS well (
    id serial PRIMARY KEY,
    -- TODO: global_id -- Globally unique identifier for the feature
    asset_type smallint REFERENCES asset_type_water_device_supply_welltype (id) NOT NULL,
    asset_id varchar,
    manufacturer varchar,
    model varchar,
    filtration_type smallint REFERENCES water_supply_filtration_type (id),
    bore_depth numeric,
    aquifer_depth numeric,
    permitted_flow numeric,
    avaible_flow numeric,
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
COMMENT ON COLUMN well.id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN well.global_id IS 'Globally unique identifier for the feature';
COMMENT ON COLUMN well.asset_type IS 'Category of the treatment plant based on its water source';
COMMENT ON COLUMN well.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN well.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN well.model IS 'Specific model designation of the asset';
COMMENT ON COLUMN well.filtration_type IS 'Indicates the type of filtration system used for water treatment';
COMMENT ON COLUMN well.bore_depth IS 'Represents the depth of the borehole in meters';
COMMENT ON COLUMN well.aquifer_depth IS 'Specifies the depth at which the aquifer is located';
COMMENT ON COLUMN well.permitted_flow IS 'Defines the maximum flow rate allowed for the well';
COMMENT ON COLUMN well.avaible_flow IS 'Indicates the current flow rate available from the well';
COMMENT ON COLUMN well.name IS 'Name of the treatment plant or asset';
COMMENT ON COLUMN well.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN well.lifecycle IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN well.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN well.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN well.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN well.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN well.maintained_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN well.geom IS 'Geometric representation of the feature';
COMMENT ON COLUMN well.spatial_source IS 'Describes the source of spatial data for the assets location';
COMMENT ON COLUMN well.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN well.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN well.created_user IS 'User who created the feature';
COMMENT ON COLUMN well.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN well.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN well.last_edited_date IS 'Date and time of the most recent modification to the record';
-- INFO: Indexes
CREATE INDEX idx_well_geom USING gist (geom);
COMMIT;

