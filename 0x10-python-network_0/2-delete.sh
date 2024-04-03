#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: Please provide a URL as an argument."
  exit 1
fi

response=$(curl -s -X DELETE "$1")

echo "Response body:"
echo "$response"
