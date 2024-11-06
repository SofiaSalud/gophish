#!/bin/bash

# Debugging: Print the PORT value to confirm it's being recognized
echo "Heroku PORT is: $PORT"

# Substitute {{PORT}} in config.json with the actual $PORT value from Heroku
sed -i "s/{{PORT}}/$PORT/g" config.json

# Start the Gophish app
./bin/gophish
