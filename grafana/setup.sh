#!/bin/sh

curl 'http://admin:admin@localhost:3000/api/datasources' \
     -X POST \
     -H 'Content-Type: application/json;charset=UTF-8' \
     --data-binary '{"name":"graphite","type":"graphite","url":"http://graphite:8080","access":"proxy","isDefault":true,"database":"","user":"","password":"", "basicAuth":false,"basicAuthUser":"","basicAuthPassword":"","withCredentials":false}'
