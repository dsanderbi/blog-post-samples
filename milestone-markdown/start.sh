#!/bin/sh

CI_PROJECT_DIR=$1
PRIVATE_TOKEN=$2
PROJECT_ID=$3

sh /opt/hop/hop-conf.sh \
     --project-create \
     --project=markdown \
     --project-home=$CI_PROJECT_DIR

echo $PRIVATE_TOKEN
echo $PROJECT_ID
    
sh /opt/hop/hop-run.sh -j markdown -r local -f ${PROJECT_HOME}/src/main.hwf --parameters=PRIVATE_TOKEN=${PRIVATE_TOKEN},PROJECT_ID=${PROJECT_ID}