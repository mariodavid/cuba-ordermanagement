#!/usr/bin/env bash
set +x;
source deployment/ecs/scripts/bash-print-functions.sh

if [ -z "$1" ] || [ -z "$2" ]
  then
    echo "usage: ./deploy-to-ecs.sh APP_NAME APP_VERSION"
    exit 1
fi
APP_NAME=$1
APP_VERSION=$2
AWS_REGION="us-east-1"


####################################################################
## set the aws region for AWS cli
####################################################################
printHeader "AWS region: ${AWS_REGION}"
export AWS_DEFAULT_REGION=${AWS_REGION}


####################################################################
## check if image exists in the ECR with this name and this version
####################################################################
printHeader "Login into ECR"
$(aws ecr get-login)

printHeader "Checking Image Version in ECR Repository ${APP_NAME}-app-core"

if [ `aws ecr --region us-east-1 list-images --repository-name ${APP_NAME}-app-core | jq '.imageIds[].imageTag' | grep ${APP_VERSION}` ]
then
  printInfo "Image Version: ${APP_VERSION} found"
else
  printError "Image Version not found: ${APP_VERSION}"
  exit 1
fi


####################################################################
## registering new task revision
####################################################################

SERVICE_NAME="${APP_NAME}-service"
CLUSTER_NAME="${APP_NAME}-cluster"
TASK_FAMILY="${APP_NAME}"

printHeader "Register task definition"
deployment/ecs/scripts/register-task.sh "deployment/ecs/task-definitions/${APP_NAME}-template.json" ${APP_VERSION} ${TASK_FAMILY}


####################################################################
## update ecs service with new task revision
####################################################################

printHeader "Update ECS service"
deployment/ecs/scripts/update-ecs-service.sh ${CLUSTER_NAME} ${SERVICE_NAME} ${TASK_FAMILY}
