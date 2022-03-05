#!/bin/bash

mkdir -p tsab-home

echo "run docker image"
docker run -p 8080:8080 -p 3306:3306 -v tsab-home:/opt/tsab tsab

