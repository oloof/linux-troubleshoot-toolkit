#!/usr/bin/env bash

PORTS=(5432 8899 8799 3019 9400 7017 8000 3090 9100)

echo "===== PORT CHECK ====="

for PORT in "${PORTS[@]}"; do
	echo
	echo "Checking port $PORT:"
	sudo ss -tulpn | grep ":$PORT " || echo "Port $PORT appears free"
done


