FROM postgres

ADD users.csv /etc/

ADD db.sql /docker-entrypoint-initdb.d