FROM "docker.osgeo.org/geoserver:2.23.1"

# RUN sh workspace-setup.sh

WORKDIR /geoserver

ENV SKIP_DEMO_DATA="true"
ENV ROOT_WEBAPP_REDIRECT="true"
ENV INSTALL_EXTENSIONS="true"
ENV STABLE_EXTENSIONS="importer"
ENV CORS_ENABLED="true"

COPY ./settings/workspace-setup.sh /geoserver/workspace-setup.sh
RUN chmod +x /geoserver/workspace-setup.sh
RUN sh /geoserver/workspace-setup.sh

CMD ["startup.sh"]