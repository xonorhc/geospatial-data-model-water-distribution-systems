BEGIN;
CREATE TABLE IF NOT EXISTS flushing_and_blow_off (
    id serial PRIMARY KEY,
    geom geometry(point, 4326),
    created_user varchar,
    created_date date,
    last_edited_user varchar,
    last_edited_date date,
    asset_type smallint REFERENCES asset_type_water_device_flushing_and_blow_off (id) NOT NULL,
    asset_id varchar,
    name varchar,
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
CREATE INDEX idx_flushing_and_blow_off_geom USING gist (geom);
COMMIT;

