#!/usr/bin/env bash

echo "===== DOCKER VERSION ====="
docker --version
echo

echo "===== DOCKER CONTAINERS RUNNING ====="
docker ps
echo

echo "===== ALL DOCKER CONTAINERS ====="
docker ps -a
echo

echo "===== DOCKER IMAGES ====="
docker images 
echo

echo "===== DOCKER COMPOSE SERVICES ====="
docker compose ps 2>/dev/null || echo "No docker compose project detected here."
echo


