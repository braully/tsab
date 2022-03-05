#!/bin/sh
TSAB_HOME=./tsab-home; java -Xmx500m -jar target/dependency/webapp-runner.jar --port 8080 --session-store memcache --path '' target/tsab

