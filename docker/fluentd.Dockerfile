FROM grafana/fluent-plugin-grafana-loki:master

RUN fluent-gem install fluent-plugin-docker
RUN fluent-gem install fluent-plugin-docker_metadata_filter