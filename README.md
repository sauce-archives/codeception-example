# Codeception Example

An example [codeception](http://codeception.com) test configured to run on TestObject.


To run the test, first install codeception:
```
wget http://codeception.com/codecept.phar
alias codecept='codecept.phar'
```

You then need to set the device, appium version, and api key:
```
export TESTOBJECT_DEVICE=your test device
export TESTOBJECT_APPIUM_VERSION=1.5.2-updated-chromedriver
export TESTOBJECT_API_KEY=your api key
export APPIUM_ENDPOINT=http://appium.testobject.com
```

The test can be run on both Android and iOS devices.

To run the test, execute `codecept run`

### Running with docker

Alternatively, tests can be run using docker:

```
./docker-build.sh
./docker-run.sh <device> <appium version> <api key> http://appium.testobject.com
```
