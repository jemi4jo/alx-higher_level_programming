#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: Please provide a URL as an argument."
  exit 1
fi

allowed_methods=$(curl -s -I -X OPTIONS "$1" | grep -i 'Allow:' | awk '{print $2}')

if [ -z "$allowed_methods" ]; then
  echo "Warning: 'Allow:' header not found. Methods might not be accurately detected."
else
  echo "Allowed HTTP methods for $1:"
  echo "$allowed_methods"
fi
