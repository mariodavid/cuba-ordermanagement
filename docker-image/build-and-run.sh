#!/bin/bash

./gradlew buildWar
cp build/distributions/war/app.war docker-image/war/
docker build -t cuba-ordermanagement docker-image/
