BEGIN;
CREATE TABLE IF NOT EXISTS service_territory (
    id serial PRIMARY KEY,
    geom geometry(polygon, 4326),
    created_user varchar,
    created_date date,
    last_edited_user varchar,
    last_edited_date date,
    name varchar, -- Name of the utility associated with the service territory
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
CREATE INDEX idx_service_territory_geom USING gist (geom);
COMMIT;

