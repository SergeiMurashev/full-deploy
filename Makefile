.PHONY: restart build up down clean

all: build up

build:
	docker compose build

up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose down
	docker compose build --no-cache
	docker compose up -d

clean:
	docker compose down
	docker compose rm -f
	docker system prune -f

# Show logs
logs:
	docker compose logs -f 