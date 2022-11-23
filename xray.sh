#!/bin/sh
if [ ! -f UUID ]; then
  UUID="b87baa45-6e78-4155-99e3-3563022d821e"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

