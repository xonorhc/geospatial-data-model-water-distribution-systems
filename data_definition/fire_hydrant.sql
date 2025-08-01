BEGIN;
CREATE TABLE IF NOT EXISTS fire_hydrant (
    id serial PRIMARY KEY,
    geom geometry(point, 4326),
    created_user varchar,
    created_date date,
    last_edited_user varchar,
    last_edited_date date,
    asset_type smallint REFERENCES asset_type_water_device_fire_hydrant (id) NOT NULL,
    asset_id varchar,
    diameter smallint REFERENCES water_hydrant_service_diameter (id) NOT NULL,
    secondary_diameter numeric,
    install_date date,
    lifecycle_status smallint REFERENCES lifecycle (id) NOT NULL,
    notes varchar,
    manufacturer varchar,
    model bigint,
    inservice_date date,
    retired_date date,
    owned_by smallint REFERENCES asset_owner (id) NOT NULL,
    main_by smallint REFERENCES asset_manager (id) NOT NULL,
    spatial_source smallint REFERENCES spatial_source (id) NOT NULL,
    spatial_confidence smallint REFERENCES spatial_confidence (id) NOT NULL,
    symbol_rotation numeric
);
CREATE INDEX idx_fire_hydrant_geom USING gist (geom);
COMMIT;

