#!/usr/bin/env bash

echo "######################################################################################"
echo "CUBA app-core starting..."
echo "######################################################################################"

echo "Settings:"
env | grep -i CUBA_


: ${CUBA_DB_HOST?"CUBA_DB_HOST required (docker run -e 'CUBA_DB_HOST=myHost)'"}
: ${CUBA_DB_PORT?"CUBA_DB_PORT required (docker run -e 'CUBA_DB_PORT=5432)'"}
: ${CUBA_DB_NAME?"CUBA_DB_NAME required (docker run -e 'CUBA_DB_NAME=myDBInstanceName)'"}
: ${CUBA_DB_USERNAME?"CUBA_DB_USERNAME required (docker run -e 'CUBA_DB_USERNAME=myDbUsername)'"}
: ${CUBA_CLUSTER_ENABLED?"CUBA_CLUSTER_ENABLED required (docker run -e 'CUBA_CLUSTER_ENABLED=true)'"}


if [ "$CUBA_ECS" = "true" ]
then
    echo "Activating ECS mode"
fi

echo "db.host=${CUBA_DB_HOST}" >> /usr/local/tomcat/conf/catalina.properties
echo "db.port=${CUBA_DB_PORT}" >> /usr/local/tomcat/conf/catalina.properties
echo "db.name=${CUBA_DB_NAME}" >> /usr/local/tomcat/conf/catalina.properties
echo "db.username=${CUBA_DB_USERNAME}" >> /usr/local/tomcat/conf/catalina.properties
echo "db.password=${CUBA_DB_PASSWORD}" >> /usr/local/tomcat/conf/catalina.properties


if [ ${CUBA_WEB_PORT+x} ]
then
    echo "cuba.webPort=${CUBA_WEB_PORT}" >> /usr/local/tomcat/conf/catalina.properties
fi


echo "cuba.cluster.enabled=${CUBA_CLUSTER_ENABLED}" >> /usr/local/tomcat/conf/catalina.properties

if [ "$CUBA_CLUSTER_ENABLED" == "true" ]
then
    : ${CUBA_JGROUPS_EXTERNAL_PORT?"CUBA_JGROUPS_EXTERNAL_PORT required (docker run -e 'CUBA_JGROUPS_EXTERNAL_PORT=7800)'"}
    : ${CUBA_JGROUPS_GOSSIP_HOSTS?"JCUBA_GROUPS_GOSSIP_HOSTS required (docker run -e 'CUBA_JGROUPS_GOSSIP_HOSTS=192.168.0.1[12001],192.168.0.2[12001])'"}
    : ${CUBA_ECS?"CUBA_ECS required (docker run -e 'CUBA_ECS=true|false)'"}

    if [ "$CUBA_ECS" = "true" ]
    then
        CUBA_JGROUPS_EXTERNAL_ADDR=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)
    else
        : ${CUBA_JGROUPS_EXTERNAL_ADDR?"CUBA_JGROUPS_EXTERNAL_ADDR required (docker run -e 'JGROUPS_EXTERNAL_ADDR=10.0.1.210)'"}
    fi

    echo "jgroups.external_addr=${CUBA_JGROUPS_EXTERNAL_ADDR}" >> /usr/local/tomcat/conf/catalina.properties
    echo "jgroups.external_port=${CUBA_JGROUPS_EXTERNAL_PORT}" >> /usr/local/tomcat/conf/catalina.properties
    echo "jgroups.gossip_router_hosts=${CUBA_JGROUPS_GOSSIP_HOSTS}" >> /usr/local/tomcat/conf/catalina.properties
fi


if [ "$CUBA_ECS" = "true" ]
then
    CUBA_WEB_HOST_NAME=$(curl http://169.254.169.254/latest/meta-data/hostname)
else
    : ${CUBA_WEB_HOST_NAME?"CUBA_WEB_HOST_NAME required (docker run -e 'CUBA_WEB_HOST_NAME=myHostName)'"}
fi


echo "cuba.webHostName=${CUBA_WEB_HOST_NAME}" >> /usr/local/tomcat/conf/catalina.properties

/usr/local/tomcat/bin/catalina.sh run
