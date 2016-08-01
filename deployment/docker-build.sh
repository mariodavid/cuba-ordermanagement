#!/bin/bash

APP_NAME=$1
APP_COMPONENT=$2
IMAGE_VERSION=$3

IMAGE_NAME=${APP_NAME}-${APP_COMPONENT}


echo "App name: ${APP_NAME}"
echo "App component: ${APP_COMPONENT}"
echo "Image version: ${IMAGE_VERSION}"


./gradlew buildWar
cp build/distributions/war/${APP_COMPONENT}.war deployment/docker-image/${APP_COMPONENT}/container-files/war/

docker build -t ${IMAGE_NAME}:${IMAGE_VERSION} deployment/docker-image/${APP_COMPONENT}/
