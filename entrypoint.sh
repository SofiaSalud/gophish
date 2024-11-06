#!/bin/bash

# Debugging: Print the PORT value to confirm it's being recognized
echo "Heroku PORT is: $PORT"

# Use envsubst to replace $PORT in config.json
envsubst < config.json > temp_config.json
mv temp_config.json config.json

# Start the Gophish app
./bin/gophish
