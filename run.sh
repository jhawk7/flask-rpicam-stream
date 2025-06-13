#!/bin/sh

# start the app with gunicorn using 1 thread
gunicorn --reload -w 1 -b "0.0.0.0:5000" "stream:app"
