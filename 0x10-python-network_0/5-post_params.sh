#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: Please provide a URL as an argument."
    exit 1
fi

email="test@gmail.com"
subject="I will always be here for PLD"

post_data="email=$email&subject=$subject"

response=$(curl -s -X POST -d "$post_data" "$1")

echo "Response body:"
echo "$response"
