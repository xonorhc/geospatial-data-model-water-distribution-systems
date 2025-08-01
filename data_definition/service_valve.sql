BEGIN;
CREATE TABLE IF NOT EXISTS service_valve (
    id serial PRIMARY KEY,
    geom geometry(point, 4326),
    created_user varchar,
    created_date date,
    last_edited_user varchar,
    last_edited_date date,
    asset_type smallint REFERENCES asset_type_water_device_service_valve (id) NOT NULL,
    asset_id varchar,
    diameter smallint REFERENCES water_diameter (id) NOT NULL,
    install_date date,
    lifecycle_status smallint REFERENCES lifecycle (id) NOT NULL,
    manufacturer varchar,
    model bigint,
    notes varchar,
    inservice_date date,
    retired_date date,
    owned_by smallint REFERENCES asset_owner (id) NOT NULL,
    main_by smallint REFERENCES asset_manager (id) NOT NULL,
    spatial_source smallint REFERENCES spatial_source (id) NOT NULL,
    spatial_confidence smallint REFERENCES spatial_confidence (id) NOT NULL,
    symbol_rotation numeric
);
CREATE INDEX idx_service_valve_geom USING gist (geom);
COMMIT;

