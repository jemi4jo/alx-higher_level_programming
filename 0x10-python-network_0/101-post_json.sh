#!/bin/bash

# Check for required arguments
if [ -z "$1" -o -z "$2" ]; then
  echo "Error: Please provide a URL and a filename as arguments."
  exit 1
fi

# Check if the file exists
if [ ! -f "$2" ]; then
  echo "Error: File '$2' does not exist."
  exit 1
fi

# Read the file content (assuming UTF-8 encoding)
json_data=$(cat -n "$2" | grep -v "^$" | cut -d$'\t' -f2- | tr '\n' '\r')

# Send POST request with JSON data and capture response
response=$(curl -s -X POST -H "Content-Type: application/json" -d "$json_data" "$1")

# Display the response body
echo "Response body:"
echo "$response"
