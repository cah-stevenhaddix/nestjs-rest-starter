# Payments Back End

A simple Rest API for managing payments. Written in NodeJS/NestJS/Prisma.

## Local Development

### Nest CLI
Nest CLI can be usered to generate endpoints with pre-built templates
```sh
npm install -g @nestjs/cli
nest generate <resource|controller|interface>
```

### Square Access Token

Add sandbox access token to `.env` file.

```sh
SQUARE_ACCESS_TOKEN=<TOKEN>
```

### Running the app

Currently, the preferred way to develop the app is via `docker compose`. All of the configuration files are setup to point to docker resources.

```bash
# development
$ docker compose up
```

### Adding new NPM packages

When Adding new NPM packages the docker image needs to be rebuilt. Appending `--build` tells docker to run `npm install` during container creation.

```
docker compose up --build
```

### VPN
If you are __not__ on the VPN you need to remove the Artifactory setup instruction from the `Dockerfile`. However, in the future this might not be an option as we begin publishing internal NPM packages.

```sh
# Dockerfile
RUN echo registry=https://artifacts.cahcommtech.com/repository/npm/ > ~/.npmrc && \
    echo always-auth=true >> ~/.npmrc && \
    echo _auth=Y29tbXRlY2g6Q29tbXRlY0g= >> ~/.npmrc
```

### Prisma
Create migration scripts after modifying `schema.prisma` using
```
npx prisma migrate dev
```

### pgAdmin
Included with the `docker compose`, pgAdmin can be used to view an edit the postgresql database.

Set Up:
```
email: admin@admin.com
password: root

Host: use `ifconfig` to get local address ( ex. 192.168.0.104 ) 
Port: 5432
Maintenence database: postgres
Username: postgres
Password postgres 
```

## Resources/Ports
| Resource     | Port                                     |
| ------------ | ---------------------------------------- |
| REST API     | [:3001/api](http://localhost:3001/api)   |
| Swagger Docs | [:3001/docs](http://localhost:3001/docs) |
| pgAdmin      | [:5050](http://localhost:5050) |

## Test

```bash
# unit tests
$ npm run test

# e2e tests
$ npm run test:e2e

# test coverage
$ npm run test:cov
```
