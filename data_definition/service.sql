BEGIN;
CREATE TABLE IF NOT EXISTS service (
    id serial PRIMARY KEY,
    geom geometry(linestring, 4326),
    created_user varchar,
    created_date date,
    last_edited_user varchar,
    last_edited_date date,
    asset_type smallint REFERENCES asset_type_water_line_service (id) NOT NULL,
    asset_id varchar,
    diameter smallint,
    material smallint REFERENCES water_service_material (id) NOT NULL,
    design_type smallint REFERENCES water_type (id) NOT NULL,
    measured_length numeric, -- Recorded length of the asset
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
    spatial_confidence smallint REFERENCES spatial_confidence (id) NOT NULL
);
CREATE INDEX idx_service_geom USING gist (geom);
COMMIT;

