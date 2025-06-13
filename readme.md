# Fluentd Docker Logging Pipeline

This project provides a Dockerized Fluentd setup for collecting, parsing, and storing logs in a PostgreSQL database. It is designed to receive logs from various sources, transform them, and persist them for analytics and monitoring.

## Features

- **Fluentd** as the log collector and processor.
- **PostgreSQL** as the log storage backend.
- Supports multiple log types: device usage, navigation, zone, POI, user sessions, server metrics, and Fluentd internal logs.
- Configurable via environment variables.

## Project Structure

- `docker-compose.yml` – Docker Compose configuration for Fluentd.
- `dockerfile` – Dockerfile to build the Fluentd image with required plugins.
- `fluent.conf` – Fluentd configuration file.
- `.env.example` – Example environment variable file.
- `.env` – Your environment variable file (should not be committed).
- `readme.md` – Project documentation.

## Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/)
- A running PostgreSQL instance accessible from the Fluentd container.

## Setup

   ```sh
   git clone https://github.com/SoftGuar/fluentd_server.git
   cd fluentdDocker
   cp .env.example .env
   docker-compose up --build
   ```
This will:

Build the Fluentd Docker image with required plugins.
Start the Fluentd container, exposing ports 24224 (forward) and 9880 (HTTP).

### Send logs to Fluentd
Forward logs to localhost:24224 (forward protocol) or localhost:9880 (HTTP input).
Logs will be parsed and stored in your PostgreSQL database according to the rules in fluent.conf.
