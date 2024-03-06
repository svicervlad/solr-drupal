FROM solr:8.7

USER root

COPY solr_8.x_config.zip /opt/solr/server/solr/configsets/solr_8.x_config.zip

RUN unzip /opt/solr/server/solr/configsets/solr_8.x_config.zip -d /opt/solr/server/solr/configsets/drupal_core_configs

RUN rm -rf /opt/solr/server/solr/configsets/solr_8.x_config.zip

USER solr
CMD solr-precreate test /opt/solr/server/solr/configsets/drupal_core_configs