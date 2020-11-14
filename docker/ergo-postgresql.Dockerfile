FROM postgres

ARG SCHEMA=https://raw.githubusercontent.com/ergoplatform/explorer-backend/master/modules/explorer-core/src/main/resources/db/V1__Node_data.sql

ENV POSTGRES_DB ergo
# Please note we're exposing the password here,
# so never shared this container outside the cluster.
ENV POSTGRES_PASSWORD ergo
ENV POSTGRES_USER ergo

ADD $SCHEMA /docker-entrypoint-initdb.d
RUN chown postgres /docker-entrypoint-initdb.d/*sql

EXPOSE 5432