FROM postgres:10.13
RUN mkdir /backups
ENV LANG="es_ES.utf8" TZ="Europe/Madrid" PGTZ="Europe/Madrid"
RUN localedef -i es_ES -c -f UTF-8 -A /usr/share/locale/locale.alias es_ES.UTF-8 && date
COPY ./initdb /docker-entrypoint-initdb.d
COPY ./backups /backups
