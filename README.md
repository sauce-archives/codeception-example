# Codeception Example

An example [codeception](http://codeception.com) test configured to run on TestObject.

You then need to set environment variables like the device, appium version, and api key:
```
export TESTOBJECT_API_KEY=your api key
export APPIUM_URL=appium.testobject.com
export PLATFORM_NAME=ANDROID or IOS
export PLATFORM_VERSION=platform version of the used device e.g. '10' don't forget the Quotation marks!
```

### Run:

0. set all the suitable environment variables for your test setup (see 4).
1. navigate to project path `cd your/path/codeception-example`
2. build it using `./codecept.phar build` or `php codecept.phar build`
3. use `./codecept.phar run` or `php codecept.phar run` to run it with basic capabilities
4. to run it with the _staging_ capabilities use `./codecept.phar run --env staging` , `php codecept.phar run --env static` or `php codecept.phar run --env specific_appium_version` to use a specific device or don't use `--env` (the configuration file: `acceptance.suite.yml`).

### Running with docker

Alternatively, tests can be run using docker:

```
./docker-build.sh
./docker-run.sh <api key> <platform name> <platform version> <appium url>
Example: ./docker-run.sh 01234567890123456789012345 IOS "'10'" appium.testobject.com
```

### Downloading codeception

Codeception can be downloaded with wget: `wget http://codeception.com/codecept.phar`
