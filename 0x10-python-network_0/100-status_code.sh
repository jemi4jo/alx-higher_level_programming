#!/bin/bash

# Check if a URL argument is provided
if [ -z "$1" ]; then
  echo "Error: Please provide a URL as an argument."
  exit 1
fi

# Send GET request and capture response with status code (using temporary variable)
response=$(curl -s -o /dev/null -w "%{http_code}" "$1")

# Extract and display the status code
echo -n "Status code: "  # -n suppresses newline after echo
echo "${response}"
