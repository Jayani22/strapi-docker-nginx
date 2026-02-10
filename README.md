### Dockerized Strapi with PostgreSQL and Nginx

In this project, I set up a Strapi application using Docker. The application uses PostgreSQL as the database and Nginx as a reverse proxy. All the services run inside Docker containers and are connected using a custom Docker network.

---

## Prerequisites

Ensure the following are installed on your system:

- Docker
- Docker Compose

No local installation of PostgreSQL, Node.js, or Strapi is required.

---

## Overview of the Setup

A user-defined Docker network was created to allow secure communication between all containers. 
Three containers were used in this setup: 
- PostgreSQL for data storage 
- Strapi as the backend application
- Nginx to act as a reverse proxy.
All containers communicate internally using their service names within the same Docker network.

## Docker Network

A user-defined Docker network was created so that all containers can talk to each other safely. Because of this network, the containers can communicate using their names instead of IP addresses.

## PostgreSQL Database

PostgreSQL runs in its own container. The database name, username, and password are provided using environment variables. A Docker volume is used so that database data is not lost when containers restart.

## Strapi Application

The Strapi application runs inside a Docker container and connects to the PostgreSQL database. The database connection details are passed using environment variables. Strapi does not connect to the database directly on the host; it connects through the Docker network.

## Nginx Reverse Proxy

Nginx is used as a reverse proxy. The browser sends requests to Nginx on port 80, and Nginx forwards those requests to the Strapi application running inside Docker. This makes the application easy and safe to access.

## Running the Application

All services are started together using Docker Compose. Once started, the containers run in the background and can be checked to make sure they are running correctly.

## Accessing Strapi

After everything is running, the Strapi Admin Dashboard can be opened in the browser using:

http://localhost/admin

If this page opens, it means the setup is working correctly.