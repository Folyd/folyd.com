#!/usr/bin/env bash
set -e

pip3 install lektor
lektor build -f webpack --output-path dist
rm -rf dist/.lektor