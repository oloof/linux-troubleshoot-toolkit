#!/usr/bin/env bash

echo "===== SYSTEM INFO ====="
unme -a
echo

echo "===== CPU ====="
nproc 
lscpu | grep -E "Model name|CPU\(s\)|Thread|Core|Socket"
echo

echo "===== MEMORY ====="
free -h
echo

echo "===== DISK ====="
df -h 
echo

echo "===== TOP-LEVEL DIRECTORY SIZE ====="
du -h --max-depth=1 2>/dev/null | sort -h
echo

echo "===== NETWORK ====="
ip a
echo

echo "===== ROUTE ====="
ip route
echo


