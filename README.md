 
# Next-App Portfolio Docker Setup

This is a simple portfolio app.

## Prerequisites

Before you begin, make sure you have the following installed:

- Docker
- Git (optional, for cloning the repository)

## Setup

1. Clone this repository (if you haven't already):

   ```bash
   git clone https://github.com/ebad-arshad/personal-portfolio-v2
   ```

2. Navigate to the project directory:

   ```bash
   cd personal-portfolio-v2
   ```

## Usage

1. Start the containers using Docker Compose:

   ```bash
   docker-compose up --build
   ```

2. Access the Nginx app in your web browser:

   - http://localhost:80
   
## Cleaning Up

To stop and remove the Docker containers, press `Ctrl+C` in the terminal where the containers are running, or use the following command:

```bash
docker-compose down
```

## To run this application without docker-compose

- First create a docker image from Dockerfile
```bash
docker build -t your-name-porfolio .
```

## Notes

- Make sure to replace placeholder (`your-name`) with your actual name.

- If you encounter issues, check Docker logs and error messages for troubleshooting.

```
