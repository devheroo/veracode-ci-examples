#!/bin/sh

DATE=`date +"%Y-%m-%d-%H%M"`
TEAM_ANALYSISCENTER_ID=$1
TEAM_ANALYSISCENTER_KEY=$2
WRAPPER_LOCATION=$3
APP_PROFILE_NAME=$4
FILEPATH=$5
INCLUDE_MODULES=$6

/usr/bin/java -jar --add-modules java.se.ee $WRAPPER_LOCATION -vid $TEAM_ANALYSISCENTER_ID -vkey $TEAM_ANALYSISCENTER_KEY -action uploadandscan -appname "${APP_PROFILE_NAME}" -include "${INCLUDE_MODULES} -createprofile true -filepath $FILEPATH -version $DATE
