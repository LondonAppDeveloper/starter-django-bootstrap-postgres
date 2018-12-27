# Starter Django Bootstrap Postgres

Starter project for a Django website that has Bootstrap and Postgres.

Key components:

 - Makefile to run development commands
 - [webpack 4](https://webpack.js.org/) used to build JavaScript and CSS
 - Bootstrap4
 - Docker
 - Docker Compose

## Usage

### Commands

**Add Django App**

```
docker-compose run --rm app sh -c "python manage.py startapp <APP_NAME>"
```

**Install NPM Package**

```
docker-compose -f docker-compose-dev.yml run --rm dev sh -c "npm install --save <PACKAGE>"
```
