#!/bin/bash

echo "Compile the project"
./compile.sh

echo "Build image tsab"
docker build -t tsab .
