<div align="center">
    <a href="https://londonappdeveloper.com" target="_blank">
        <img src="https://londonappdeveloper.com/wp-content/uploads/2024/11/banner.svg" alt="Banner image" />
    </a>
</div>

<div align="center">
    <p>Full-Stack Consulting and Courses.</p>
    <a href="https://londonappdeveloper.com" target="_blank">Website</a> |
    <a href="https://londonappdeveloper.teachable.com/" target="_blank">Courses</a> |
    <a href="https://londonappdeveloper.com/tutorials/" target="_blank">Tutorials</a> |
    <a href="https://londonappdeveloper.com/consulting/" target="_blank">Consulting
</div>

<br /><br >

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
