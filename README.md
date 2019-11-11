# Folyd.com

[![Build Status](https://travis-ci.com/Folyd/folyd.com.svg?branch=master)](https://travis-ci.com/Folyd/folyd.com)

Personal website, proudly powered by Lektor and Bulma.css.

### Get Started

- pip install lektor
- lektor serve -p 5000 -f webpack -v

Open the browser http://localhost:5000 .


### Run in Docker

- docker build --tag folyd.com .
- docker run --name folyd -p 5000:5000 -v \`pwd\`:/source folyd.com:latest