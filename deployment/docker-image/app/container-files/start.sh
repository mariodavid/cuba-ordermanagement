#!/usr/bin/env bash

echo "######################################################################################"
echo "CUBA app starting..."
echo "######################################################################################"

echo "Settings:"
env | grep -i CUBA_

: ${CUBA_CORE_URL_CONNECTION_LIST?"CUBA_CORE_URL_CONNECTION_LIST required (docker run -e 'CUBA_CORE_URL_CONNECTION_LIST=http://my-app-core:8080/app-core,http://my-app-core2:8080/app-core')"}


if [ "$CUBA_ECS" = "true" ]
then
    echo "Activating ECS mode"
fi


echo "cuba.connectionUrlList=${CUBA_CORE_URL_CONNECTION_LIST}" >> /usr/local/tomcat/conf/catalina.properties



if [ "$CUBA_ECS" = "true" ]
then
    CUBA_WEB_HOST_NAME=$(curl http://169.254.169.254/latest/meta-data/hostname)
else
    : ${CUBA_WEB_HOST_NAME?"CUBA_WEB_HOST_NAME required (docker run -e 'CUBA_WEB_HOST_NAME=myHostName)'"}
fi

if [ ${CUBA_WEB_PORT+x} ]
then
    echo "cuba.webPort=${CUBA_WEB_PORT}" >> /usr/local/tomcat/conf/catalina.properties
fi


/usr/local/tomcat/bin/catalina.sh run
