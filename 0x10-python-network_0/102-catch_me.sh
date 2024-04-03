#!/bin/bash

# Send request to the server and capture the response (using grep for specific content)
response=$(curl -s 0.0.0.0:5000/catch_me | grep -q 'You got me!')

# Check if the response contains the desired message
if [ $? -eq 0 ]; then
  # Success: exit code 0 from grep indicates a match
  exit 0  # Script exits with success (exit code 0)
else
  # Failure: exit code non-zero from grep indicates no match
  exit 1  # Script exits with failure (exit code 1)
fi
