# Codeception Example

An example [codeception](http://codeception.com) test configured to run on TestObject.

You then need to set environment variables like the device, appium version, and api key:
```
export TESTOBJECT_DEVICE=your test device Android or iOS
export TESTOBJECT_APPIUM_VERSION=appium version to use e.g. 1.5.2-updated-chromedriver
export TESTOBJECT_API_KEY=your api key
export APPIUM_ENDPOINT=appium.testobject.com
```

### Run:

0. set environment variables.
1. navigate to project path `cd your/path/codeception-example`
2. biuld it using `./codecept.phar build` or `php codecept.phar build`
3. use `./codecept.phar run` or `php codecept.phar run` to run it with basic cpabilities
4. to run it with the _staging_ capabilities use `./codecept.phar run --env staging` or `php codecept.phar run --env staging` (configuration file: `acceptance.suite.yml`).

### Running with docker

Alternatively, tests can be run using docker:

```
./docker-build.sh
./docker-run.sh <device> <appium version> <api key> appium.testobject.com
```

### Downloading codeception

Codeception can be downloaded with wget: `wget http://codeception.com/codecept.phar`
