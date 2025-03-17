# Full Stack Application

This is a full-stack application with a React frontend, Go backend, and PostgreSQL database.

## Project Structure 

## Technologies Used

- Frontend:
  - React 18
  - Node.js 16
  - Nginx (for serving static files)

- Backend:
  - Go 1.20
  - Net/HTTP package for REST API

- Database:
  - PostgreSQL 15

- DevOps:
  - Docker
  - Docker Compose
  - Make

## Prerequisites

- Docker
- Docker Compose
- Make

## Getting Started

1. Clone the repository:
```bash
git clone <repository-url>
cd <project-directory>
```

2. Start the application:
```bash
make up
```

The application will be available at:
- Frontend: http://localhost:80
- Backend: http://localhost:8080
- Database: localhost:5439

## Available Make Commands

- `make build` - Build all containers
- `make up` - Start all containers
- `make down` - Stop all containers
- `make restart` - Rebuild and restart all containers
- `make clean` - Clean up all containers and images
- `make logs` - Show logs from all containers

## API Endpoints

- `GET /health` - Health check endpoint
  ```bash
  curl http://localhost:8080/health
  ```

## Development

### Frontend Development

The frontend is a React application created with Create React App. The source code is located in the `frontend/` directory.

### Backend Development

The backend is a Go application using the standard `net/http` package. The source code is located in the `backend/` directory.

### Database

PostgreSQL database is configured with the following default credentials:
- Host: localhost
- Port: 5439
- Database: mydevdb
- Username: mydev
- Password: 1234

## Docker Configuration

The application uses three Docker containers:

1. Frontend Container:
   - Base image: node:16 (for building)
   - Production image: nginx:alpine (for serving)
   - Port: 80

2. Backend Container:
   - Base image: golang:1.20 (for building)
   - Production image: alpine:latest
   - Port: 8080

3. Database Container:
   - Image: postgres:15
   - Port: 5439

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details. 