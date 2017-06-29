#!/bin/bash

set -e
set -x

if [ "$(uname)" != "Darwin" ]; then
    free -m
fi

df -h
df -h .

mvn clean install -DskipTests -Dmaven.javadoc.skip

