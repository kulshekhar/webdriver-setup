#!/bin/bash

echo "Launching app..."

npm run start > /dev/null 2>&1 &

echo "Waiting for app to launch on port 3000..."

while ! nc -z localhost 3000; do
  sleep 1
done

echo "App is being serve on port 3000"

echo "Starting e2e tests..."

npm run e2e

echo "Cleaning up..."

fuser -k -n tcp 3000

echo "e2e tests done."
