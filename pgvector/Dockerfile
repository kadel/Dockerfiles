# inspired by https://github.com/bitnami/containers/issues/32677

FROM docker.io/pgvector/pgvector:0.8.0-pg17 AS builder

FROM docker.io/bitnami/postgresql:17.5.0-debian-12-r3

COPY --from=builder /usr/lib/postgresql/17/lib/vector.so /opt/bitnami/postgresql/lib/
COPY --from=builder /usr/share/postgresql/17/extension/vector* /opt/bitnami/postgresql/share/extension/