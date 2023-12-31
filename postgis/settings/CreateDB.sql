CREATE SCHEMA IF NOT EXISTS geoapi;

DROP EXTENSION IF EXISTS postgis CASCADE ;
CREATE EXTENSION IF NOT EXISTS postgis ;
CREATE EXTENSION IF NOT EXISTS postgis_raster ;
CREATE EXTENSION IF NOT EXISTS postgis_topology ;

DROP SCHEMA IF EXISTS tiger CASCADE ;
DROP SCHEMA IF EXISTS tiger_data CASCADE ;

GRANT USAGE, CREATE ON SCHEMA geoapi TO geoserver;

GRANT ALL ON ALL TABLES IN SCHEMA geoapi TO geoserver;
