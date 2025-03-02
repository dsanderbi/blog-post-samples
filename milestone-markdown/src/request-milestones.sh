#!/bin/sh

PRIVATE_TOKEN=$1
PROJECT_ID=$2

curl --header "PRIVATE-TOKEN: ${PRIVATE_TOKEN}" "https://gitlab.com/api/v4/projects/${PROJECT_ID}/milestones" > project-milestones.json