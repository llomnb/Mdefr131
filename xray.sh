#!/bin/sh
if [ ! -f UUID ]; then
  UUID="19ccddb3-111e-4fb1-a003-b0c6282212a6"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

