#!/usr/bin/env bash

TARGET_ORG_ALIAS=${1:-}

sfdx force:user:permset:assign -n dreamhouse -u "$TARGET_ORG_ALIAS"
sfdx force:data:tree:import -p assets/data/Broker__c-Property__c-plan.json -u "$TARGET_ORG_ALIAS"
