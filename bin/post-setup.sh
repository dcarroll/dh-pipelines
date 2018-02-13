#!/usr/bin/env bash

TARGET_ORG_ALIAS=${1:-}
STAGE=${2:-}

# if it's a review app or ci ...
if [ "$STAGE" == "" ]; then

  sfdx force:user:permset:assign -n dreamhouse -a "$TARGET_ORG_ALIAS"
  sfdx force:data:tree:import -p assets/data/Broker__c-Property__c-plan.json -a "$TARGET_ORG_ALIAS"

fi