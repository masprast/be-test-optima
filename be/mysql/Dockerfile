FROM mysql:latest

# COPY data.sql /docker-entrypoint-initdb.d/
# WORKDIR /db
ADD ./data.sql /docker-entrypoint-initdb.d/
ADD ./init_db.sh /docker-entrypoint-initdb.d/
ARG restart=always
# VOLUME [ "/db" ]
EXPOSE 3306