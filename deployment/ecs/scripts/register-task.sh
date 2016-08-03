#!/usr/bin/env bash
set +x;

source deployment/ecs/scripts/bash-print-functions.sh

# script parameters
TEMPLATE_FILE=$1
CLOVER_VERSION=$2
TASK_FAMILY=$3


if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]
  then
    echo "usage: ./register-task.sh TEMPLATE_FILE CLOVER_VERSION TASK_FAMILY"
    exit 1
fi

sed -e "s;%CLOVER_VERSION%;${CLOVER_VERSION};g" ${TEMPLATE_FILE} > clover-${CLOVER_VERSION}.json



if aws ecs register-task-definition --family ${TASK_FAMILY} --cli-input-json file://clover-${CLOVER_VERSION}.json >> build.log
then
    printInfo "Task definition registered"
else
    printError "Count not register task definition"
fi;
