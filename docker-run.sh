#!/usr/bin/env bash

docker run --rm -e "TESTOBJECT_DEVICE=$1" -e "TESTOBJECT_APPIUM_VERSION=$2" -e "TESTOBJECT_API_KEY=$3" -e "APPIUM_ENDPOINT=$4" codeception-example
