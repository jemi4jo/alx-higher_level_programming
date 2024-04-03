#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: Please provide a URL as an argument."
  exit 1
fi

header_value="98"

response=$(curl -s -H "X-School-User-Id: $header_value" "$1")

echo "Response body:"
echo "$response"
