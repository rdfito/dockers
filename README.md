# My Docker files
My Docker configuration files.

## Dockers
- `pg10`: [PostgreSQL](https://hub.docker.com/_/postgres) 10 + [pgAdmin4](https://hub.docker.com/r/dpage/pgadmin4)
- `pg12`: [PostgreSQL](https://hub.docker.com/_/postgres) 12 + [pgAdmin4](https://hub.docker.com/r/dpage/pgadmin4)

## Command
```
cd <docker_dir>
docker-compose up -d
```

## .ENV
A `.env` file is required in the `<docker_dir>`. E.g.:
```
POSTGRES_USER=postgres
POSTGRES_PASSWORD=impressivepass
DB_NAME=dbname
DB_USER_NAME=dbuser
DB_USER_PASSWORD=dbuserpassword
PGADMIN_DEFAULT_EMAIL=pgadminuser@email.is
PGADMIN_DEFAULT_PASSWORD=pgadminuserpassword
DB_DUMP=db.dump
```

## Links
- [Docs](https://docs.docker.com/)
- [DockerHub](https://hub.docker.com/)
