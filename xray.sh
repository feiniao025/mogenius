#!/bin/sh
if [ ! -f UUID ]; then
  UUID="185c15e5-0b32-4292-afe9-80bb5d01aea2"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

