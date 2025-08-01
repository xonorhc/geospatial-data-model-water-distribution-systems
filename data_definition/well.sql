BEGIN;
CREATE TABLE IF NOT EXISTS well (
    id serial PRIMARY KEY,
    geom geometry(linestring, 4326),
    created_user varchar,
    created_date date,
    last_edited_user varchar,
    last_edited_date date,
    filtration_type smallint references water_supply_filtration_type(id),
    bore_depth numeric,
    aquifer_depth numeric,
    permitted_flow numeric,
    avaible_flow numeric,
    asset_type smallint REFERENCES asset_type_water_device_supply_welltype(id) NOT NULL,
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
CREATE INDEX idx_well_geom USING gist (geom);
COMMIT;

