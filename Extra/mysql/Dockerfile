FROM mysql:latest

ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes

COPY mysql.sh /docker-entrypoint-initdb.d

EXPOSE 3306
