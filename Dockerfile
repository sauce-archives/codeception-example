FROM php:7.1.0-cli
MAINTAINER clample@saucelabs.com

RUN mkdir -p /root/codeception-example
ADD . /root/codeception-example
WORKDIR /root/codeception-example

RUN apt-get update && apt-get install -y wget
RUN wget http://codeception.com/codecept.phar && chmod u+x codecept.phar

CMD /root/codeception-example/codecept.phar run