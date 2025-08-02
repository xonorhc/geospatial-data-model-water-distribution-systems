BEGIN;
CREATE TABLE IF NOT EXISTS treatment_plant (
    id serial PRIMARY KEY,
    -- TODO: global_id -- Globally unique identifier for the feature
    asset_type smallint REFERENCES water_treatment_plant_type (id) NOT NULL,
    asset_id varchar,
    manufacturer varchar,
    model varchar,
    permitted_capacity numeric,
    rated_capacity numeric,
    average_daily_flow numeric,
    filtration_type smallint REFERENCES water_supply_filtration_type (id),
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
COMMENT ON COLUMN treatment_plant.id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN treatment_plant.global_id IS 'Globally unique identifier for the feature';
COMMENT ON COLUMN treatment_plant.asset_type IS 'Category of the treatment plant based on its water source';
COMMENT ON COLUMN treatment_plant.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN treatment_plant.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN treatment_plant.model IS 'Specific model designation of the asset';
COMMENT ON COLUMN treatment_plant.permitted_capacity IS 'Maximum capacity allowed for the treatment plant';
COMMENT ON COLUMN treatment_plant.rated_capacity IS 'Designed operational capacity of the treatment plant';
COMMENT ON COLUMN treatment_plant.average_daily_flow IS 'Average daily water flow processed by the treatment plant';
COMMENT ON COLUMN treatment_plant.filtration_type IS 'Type of filtration system used in the treatment plant';
COMMENT ON COLUMN treatment_plant.name IS 'Name of the treatment plant or asset';
COMMENT ON COLUMN treatment_plant.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN treatment_plant.lifecycle IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN treatment_plant.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN treatment_plant.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN treatment_plant.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN treatment_plant.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN treatment_plant.maintained_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN treatment_plant.geom IS 'Geometric representation of the feature';
COMMENT ON COLUMN treatment_plant.spatial_source IS 'Describes the source of spatial data for the assets location';
COMMENT ON COLUMN treatment_plant.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN treatment_plant.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN treatment_plant.created_user IS 'User who created the feature';
COMMENT ON COLUMN treatment_plant.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN treatment_plant.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN treatment_plant.last_edited_date IS 'Date and time of the most recent modification to the record';
-- INFO: Indexes
CREATE INDEX idx_treatment_plant_geom USING gist (geom);
COMMIT;

