#!/bin/bash
sudo podman run --rm -d --name=prometheus -p 9090:9090 --user $(id -u) -v $(pwd)/prometheus:/data prom/prometheus:latest --config.file=/data/prometheus.yml --storage.tsdb.path=/data
sudo podman run --rm -d --name=grafana -p 3000:3000 grafana/grafana
