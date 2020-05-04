FROM postgres:10.12
RUN mkdir /backups
RUN localedef -i es_ES -c -f UTF-8 -A /usr/share/locale/locale.alias es_ES.UTF-8
ENV LANG es_ES.utf8
COPY ./initdb /docker-entrypoint-initdb.d
COPY ./backups /backups
