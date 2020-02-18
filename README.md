# DataDog Terraform Exporter

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/jamesmarinoio/datadog-terraform-exporter)

A simple utility to convert DataDog dashboards and/or monitors to Terraform format.

Requires `DATADOG_API_KEY` and `DATADOG_APP_KEY` environment variables.

Useful, if you had all dashboards configured ad-hoc and now want to follow DevOps style 😀

## How to build

```bash
make build
```

## Examples

Export Keys

```bash
export DATADOG_API_KEY=xxx
export DATADOG_APP_KEY=xxx
```

Export all dashboards:
```bash
./datadog-terraform-exporter dashboards --all
```

Export one or more particular dashboard (where `1111` is the ID of the dashboard):
```bash
./datadog-terraform-exporter dashboards --ids 1111
./datadog-terraform-exporter dashboards --ids 2222
```

Write dashboards to corresponding files:
```bash
./datadog-terraform-exporter dashboards --files --all
```

Write dashboards to a single files:
```bash
./datadog-terraform-exporter dashboards --files --all
```

DataDog monitor can be exported with this command:
```bash
./datadog-terraform-exporter monitors --ids 1111
```

And DataDog Screenboard:
```bash
./datadog-terraform-exporter screenboards --all
```

## Building with Docker

```bash
docker-compose build
```

## Running with Docker

Create and populate a .env from .env.template

```bash
docker-compose run datadog-terraform-exporter <command here>
```
