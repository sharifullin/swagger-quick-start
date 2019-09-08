#!/bin/bash

function usage() {
    echo "Usage quick-start.sh [options]"
    echo "Where options:"
    echo "  i - init project"
    echo "  g - generate json"
    echo "  u - upload to SwaggerHub"
    echo "  a - execute all phases"
}

if [[  $# < 1 || ! $* =~ ^([igua])+$ ]]; then
    usage
    exit 1
fi

init="i";
generate="g";
upload="u";
all="a"

if [[ $* == *$init* || $* =~ $all ]]; then
    echo "Starting init phase"
    mvn -f 01-init-project-pom.xml generate-resources
fi

if [[ $* == *$generate* || $* =~ $all ]]; then
    echo "Starting generate phase"
    mvn -f 02-update-swagger-pom.xml compile
fi

if [[ $* == *$upload* || $* =~ $all ]]; then
    echo "Starting upload phase"
    mvn -f 03-upload-swagger-pom.xml install
fi