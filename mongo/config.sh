#!/bin/bash

source ../config.sh
export GROUP_ID="6008f47786d0d25052c47f65" # mmsGroupId in Ops Manager
export API_KEY="601ca3a486d0d25052fe73e59a4b5dedeac9fee877d7f88d67354127" # mmsApiKey in Ops Manager
export OM_URL="http://om.yaoxing.online:8080" # mmsBaseUrl in Ops Manager
export AA_URL="$OM_URL/download/agent/automation/mongodb-mms-automation-agent-manager_10.14.16.6437-1_amd64.ubuntu1604.deb" # automation agent URL
export DB_PATH="/data/db" # dbPath on host for MongoDB
export LOG_PATH="/data/log" # logPath on host for MongoDB
export DB_HOSTNAME="node1.yaoxing.online" # hostname for container. The host name must be resolvable and resolve to the docker host.
export DB_PORT="27017" # DB port