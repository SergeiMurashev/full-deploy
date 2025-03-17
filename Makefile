.PHONY: restart build up down clean

# Default target
all: build up

# Build all containers
build:
	docker compose build

# Start all containers
up:
	docker compose up -d

# Stop all containers
down:
	docker compose down

# Rebuild and restart all containers
restart:
	docker compose down
	docker compose build --no-cache
	docker compose up -d

# Clean up all containers and images
clean:
	docker compose down
	docker compose rm -f
	docker system prune -f

# Show logs
logs:
	docker compose logs -f 