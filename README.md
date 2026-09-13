

# Folyd.com

[![Build Status](https://github.com/Folyd/folyd.com/actions/workflows/lektor.yml/badge.svg?branch=master)](https://github.com/Folyd/folyd.com/actions/workflows/lektor.yml)

Personal website, proudly powered by Lektor and Bulma.css.

### Get Started

- pip install lektor
- lektor serve -p 5000 -f webpack -v

Open the browser http://localhost:5000 .


### Run in Docker

- docker build --tag folyd.com .
- docker run --name folyd -p 5000:5000 -v \`pwd\`:/source folyd.com:latest
