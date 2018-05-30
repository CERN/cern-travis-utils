#!/bin/bash

if [[ $TRAVIS_PULL_REQUEST == "false" ]]; then
    mvn deploy --settings $GPG_DIR/settings.xml -DperformRelease=true -DskipTests=true
    exit $?
else
    echo "Not deploying - TRAVIS PULL REQUEST = $TRAVIS_PULL_REQUEST"
fi
