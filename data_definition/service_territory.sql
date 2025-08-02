BEGIN;
CREATE TABLE IF NOT EXISTS service_territory (
    id serial PRIMARY KEY,
    -- TODO: global_id -- Globally unique identifier for the feature
    name varchar,
    geom geometry(polygon, 4326),
    spatial_source smallint REFERENCES spatial_source (id) NOT NULL,
    spatial_confidence smallint REFERENCES spatial_confidence (id) NOT NULL,
    created_user varchar,
    created_date date,
    last_edited_user varchar,
    last_edited_date date
);
COMMENT ON COLUMN service_territory.id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN service_territory.global_id IS 'Globally unique identifier for the feature';
COMMENT ON COLUMN service_territory.name IS 'Name of the utility associated with the service territory';
COMMENT ON COLUMN service_territory.geom IS 'Geometric representation of the feature';
COMMENT ON COLUMN service_territory.spatial_source IS 'Describes the source of spatial data for the assets location';
COMMENT ON COLUMN service_territory.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN service_territory.created_user IS 'User who created the feature';
COMMENT ON COLUMN service_territory.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN service_territory.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN service_territory.last_edited_date IS 'Date and time of the most recent modification to the record';
-- INFO: Indexes
CREATE INDEX idx_service_territory_geom USING gist (geom);
COMMIT;

