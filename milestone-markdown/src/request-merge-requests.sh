#!/bin/sh


PRIVATE_TOKEN=$1
PROJECT_ID=$2
MILESTONE_ID=$3

curl --request GET "https://gitlab.com/api/v4/projects/${PROJECT_ID}/milestones/${MILESTONE_ID}/merge_requests" \
     --header "PRIVATE-TOKEN: ${PRIVATE_TOKEN}" > merge-requests.json