BEGIN;
CREATE TABLE IF NOT EXISTS treatment_plant (
    id serial PRIMARY KEY,
    geom geometry(point, 4326),
    created_user varchar,
    created_date date,
    last_edited_user varchar,
    last_edited_date date,
    permitted_capacity numeric,
    rated_capacity numeric,
    average_daily_flow numeric,
    filtration_type smallint references water_supply_filtration_type(id),
    asset_type smallint REFERENCES water_treatment_plant_type (id) NOT NULL,
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
CREATE INDEX idx_treatment_plant_geom USING gist (geom);
COMMIT;

