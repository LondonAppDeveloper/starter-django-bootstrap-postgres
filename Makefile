
test:
	docker-compose run --rm app sh -c "python manage.py test"

lint:
	docker-compose run --rm app sh -c "flake8"

makemigrations:
	docker-compose run --rm app python manage.py makemigrations

start:
	docker-compose up

build-frontend:
	docker-compose -f docker-compose-dev.yml run --rm dev sh -c "npx webpack"
