FROM postgres

ARG SCHEMA=https://raw.githubusercontent.com/ergoplatform/explorer-backend/0025774196a6103dd3b48e35bd99ef9dcf3cb109/modules/explorer-core/src/main/resources/db/V6__Schema.sql

ENV POSTGRES_DB ergo
# Please note we're exposing the password here,
# so never shared this container outside the cluster.
ENV POSTGRES_PASSWORD ergo
ENV POSTGRES_USER ergo

ADD $SCHEMA /docker-entrypoint-initdb.d
RUN chown postgres /docker-entrypoint-initdb.d/*sql

EXPOSE 5432
