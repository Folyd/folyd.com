#!/usr/bin/env bash
set -e

pip install lektor
lektor build -f webpack --output-path dist
rm -rf dist/.lektor