#!/usr/bin/env bash
set +x;


source docker-image/environments/jenkins/ecs/bash-print-functions.sh

# script parameters
CLUSTER_NAME=$1
SERVICE_NAME=$2
TASK_FAMILY=$3

DOWN_UP_WAITING_TIME=60


if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]
  then
    echo "usage: ./update-ecs-service.sh CLUSTER_NAME SERVICE_NAME TASK_FAMILY DESIRED_COUNT"
    exit 1
fi

TASK_REVISION=`aws ecs describe-task-definition --task-definition ${TASK_FAMILY} | egrep "revision" | tr "/" " " | awk '{print $2}' | sed 's/"$//'`
DESIRED_COUNT=`aws ecs describe-services --services ${SERVICE_NAME} --cluster ${CLUSTER_NAME} | egrep -m 1 "desiredCount" | tr "/" " " | awk '{print $2}' | sed 's/,$//'`
if [ ${DESIRED_COUNT} = "0" ]; then
  DESIRED_COUNT="1"
fi

if aws ecs update-service --cluster ${CLUSTER_NAME} --service ${SERVICE_NAME} --task-definition ${TASK_FAMILY}:${TASK_REVISION} --desired-count 0 >> build.log
then
    printInfo "ECS service '${SERVICE_NAME}' updated: 0 active containers"
else
    printError "ECS service '${SERVICE_NAME}' could not be updated"
    exit 1;
fi;


printInfo "Waiting for ECS Service '${SERVICE_NAME}' to shut down containers"
sleep ${DOWN_UP_WAITING_TIME}

if aws ecs update-service --cluster ${CLUSTER_NAME} --service ${SERVICE_NAME} --task-definition ${TASK_FAMILY}:${TASK_REVISION} --desired-count ${DESIRED_COUNT} >> build.log
then
    printInfo "ECS service '${SERVICE_NAME}' updated: ${DESIRED_COUNT} active containers"
else
    printError "ECS service '${SERVICE_NAME}' could not be updated"
    exit 1;
fi;
