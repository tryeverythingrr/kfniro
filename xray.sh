#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d0077651-57a4-4307-984d-554b02f82655"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

