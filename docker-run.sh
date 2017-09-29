#!/usr/bin/env bash

docker run --rm -e "TESTOBJECT_API_KEY=$1" -e "PLATFORM_NAME=$2" -e "PLATFORM_VERSION=$3" -e "APPIUM_URL=$4"  codeception-example
