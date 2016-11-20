#!/bin/sh

gunicorn -w2 graphite_api.app:app -b 0.0.0.0:8080
