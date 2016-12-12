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
```

The test can be run on both Android and iOS devices.

To run the test, execute `codecept run`


<!--
Into /etc/php.ini to resolve error
```
[Date]
; Defines the default timezone used by the date functions
; http://php.net/date.timezone
date.timezone = America/New_York
```
-->
