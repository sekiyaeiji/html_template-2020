#!/bin/sh

echo "\n\n\n*** build:html ***"
pug -O src/html/data/*.json -P src/html/page/ --out dist
