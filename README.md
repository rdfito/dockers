# My Docker files
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

My Docker configuration files.

## Docker directories
- `mysql`: [MariaDB](https://hub.docker.com/_/mariadb) 10 and [adminer](https://hub.docker.com/_/adminer)
- `pg12`: [PostgreSQL](https://hub.docker.com/_/postgres) 12 and [pgAdmin4](https://hub.docker.com/r/dpage/pgadmin4)

## Command
```
cd <docker_directory>
docker-compose up -d
```

## .ENV
An `.env` file is required in the `<docker_directory>`. E.g.:
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

## License
Licensed under the [MIT License](LICENSE).
