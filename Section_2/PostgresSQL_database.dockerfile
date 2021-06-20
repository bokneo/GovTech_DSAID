FROM postgres 
ENV POSTGRES_PASSWORD postgres 
ENV POSTGRES_DB testdb 
COPY createTable.sql /docker-entrypoint-initdb.d/