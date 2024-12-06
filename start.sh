#!/bin/sh -e

./setup

docker-compose up --build -d

echo "Development environment started. Projects can be placed in 'projects/' folder."
