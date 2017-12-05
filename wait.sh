#!/bin/bash

echo "Waiting for site to launch on port 3000..."

while ! nc -z localhost 3000; do
  sleep 1
done

echo "Site is being serve on port 3000"
