FROM alpine:3.19
EXPOSE 3306

RUN apk update && apk upgrade
RUN apk add mysql mysql-client mariadb mariadb-client bash

RUN addgroup mysql mysql
RUN mkdir -p /run/mysqld

COPY ./init.sh /init.sh
COPY ./init_wp.sql /init_wp.sql
COPY ./init_root.sql /init_root.sql
COPY ./migrate_wp.sql /migrate_wp.sql
COPY ./my.cnf /etc/my.cnf

CMD bash /init.sh