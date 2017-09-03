#!/bin/sh

set -e

_minify="$( which minify || true )"
if [ -z "$_minify" ]; then
  yarn global add minifier
fi

if [ -d 'dist' ]; then
  rm -rf dist
fi
mkdir dist

minify -o ./dist/twentytwenty.min.css css/twentytwenty.css
minify -o ./dist/twentytwenty.min.js js/jquery.event.move.js js/jquery.twentytwenty.js
