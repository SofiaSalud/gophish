# entrypoint.sh
#!/bin/bash

# Replace placeholder with PORT in config.json
sed -i "s/{{PORT}}/$PORT/g" config.json

# Start the Gophish app
./bin/gophish
