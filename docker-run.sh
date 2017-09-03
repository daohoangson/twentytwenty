#!/bin/sh

docker run --rm -it -v "$PWD:/app" -w "/app" node:8.4.0-alpine sh
