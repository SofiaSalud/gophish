# entrypoint.sh
#!/bin/bash

# Substitute {{PORT}} in config.json with the actual $PORT value from Heroku
sed -i "s/{{PORT}}/${PORT}/g" config.json

# Start the Gophish app
./bin/gophish
