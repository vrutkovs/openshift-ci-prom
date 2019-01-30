#!/bin/bash
sudo podman run --rm -p 9090:9090 --user $(id -u) -v $(pwd)/prometheus:/prometheus-data prom/prometheus:latest --config.file=/prometheus-data/prometheus.yml --storage.tsdb.path=/prometheus-data
