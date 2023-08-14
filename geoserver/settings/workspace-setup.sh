#!/bin/sh

sh /opt/startup.sh &

echo "Waiting for Geoserver to deploy..."
until curl -sSf http://localhost:8080/geoserver > /dev/null
do
   sleep 2
done

curl -s -X POST http://localhost:8080/geoserver/rest/workspaces?default=true -u admin:geoserver -H  "accept: text/html" -H  "content-type: application/json" -d '{"workspace": {"name": "geoapi"}}'

curl -s -X POST http://localhost:8080/geoserver/rest/workspaces/geoapi/datastores -u admin:geoserver -H  "accept: application/xml" -H  "content-type: application/json" -d '{"dataStore": {"name": "postgis", "connectionParameters": {"entry": [{"@key":"host","$":"postgis"}, {"@key":"port","$":"5432"}, {"@key":"database","$":"geoserver"}, {"@key":"schema","$":"geoapi"}, {"@key":"user","$":"geoserver"}, {"@key":"passwd","$":"geoserver"}, {"@key":"dbtype","$":"postgis"}]}}}'