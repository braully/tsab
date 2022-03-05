#!/bin/bash

echo "Compile the project"
./compile.sh

echo "Build image tsab"
docker build -t tsab .

echo "run docker image"
docker run -d -p 8080:8080 -p 3306:3306 -v ./tsab-home:/opt/tsab/ tsab:lastest
