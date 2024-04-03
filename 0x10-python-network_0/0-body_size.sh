#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: Please provide a URL as an argument."
  exit 1
fi

size=$(curl -sI "$1" | grep -i 'Content-Length:' | awk '{print $2}')

if [ -z "$size" ]; then
  size=$(curl -s "$1" | wc -c)
fi

echo "Response size: $size"