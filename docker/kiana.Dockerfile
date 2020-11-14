FROM docker.elastic.co/logstash/logstash:7.6.1

ENV ES_HOST http://localhost:9200
ENV REDIS_HOST localhost
ENV REDIS_PORT 6379

RUN mkdir -p /usr/share/logstash/logs
RUN rm -f /usr/share/logstash/pipeline/logstash.conf