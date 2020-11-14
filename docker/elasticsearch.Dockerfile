FROM docker.elastic.co/elasticsearch/elasticsearch:7.6.1

USER elasticsearch

ENV http.host=0.0.0.0
ENV network.host=localhost
ENV xpack.security.enabled=false
ENV bootstrap.memory_lock=true

ENV ES_JAVA_OPTS="-Xms512m -Xmx512m"
ENV ES_MASTER true
ENV ES_DATA true
ENV ES_MIN_MASTER_NODES 1
ENV ES_CLUSTER_NAME ps-local-elasticsearch