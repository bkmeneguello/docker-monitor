#!/bin/sh

/usr/share/grafana/bin/grafana-server &

while ! nc -z -w0 localhost 3000; do
  sleep 1s
done

if ! curl -s 'http://admin:admin@localhost:3000/api/datasources' | grep -F '"name":"graphite"' | grep -F '"type":"graphite"' > /dev/null; then
  curl -s 'http://admin:admin@localhost:3000/api/datasources' \
       -X POST \
       -H 'Content-Type: application/json;charset=UTF-8' \
       --data-binary '{"name":"graphite","type":"graphite","url":"http://graphite:8080","access":"proxy","isDefault":true,"database":"","user":"","password":"", "basicAuth":false,"basicAuthUser":"","basicAuthPassword":"","withCredentials":false}'
fi

wait
