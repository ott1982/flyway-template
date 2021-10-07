FROM flyway/flyway:8-alpine
COPY ["conf", "/flyway/conf"]
COPY ["drivers", "/flyway/drivers"]
COPY ["sql", "/flyway/sql"]
CMD migrate