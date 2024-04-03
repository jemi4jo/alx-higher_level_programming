#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: Please provide a URL as an argument."
  exit 1
fi

response=$(curl -s -o /dev/null -w "%{http_code}" "$1")

status_code=$(echo "$response" | tail -n 1)

if [ "$status_code" -eq 200 ]; then
  curl -s "$1"
else
  echo "Error: Received status code $status_code."
fi
