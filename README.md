docker-cucumber
===============

Based on ruby:1.9.3

This is:

- cucumber 
- phantomjs 1.9.7
- casperjs
- capybara


Derived from https://registry.hub.docker.com/u/cmfatih/phantomjs/dockerfile/
and adapted to use the official Ruby base image
with the addition of ONBUILD triggers to copy the current working directory
into a volume and install the bundles.


USAGE
=====

Create a new docker file:
FROM antonyh/cucumber

[(re)build the image]
docker build -t antonyh/cucumber . 
 
[run the image]
docker run --rm -it -e HOST="http://server:port" antonyh/cucumber 

Enjoy.