#!/bin/bash

mkdir /var/log/logs
mkdir /var/log/logs/SendMail
mv /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/
./bin/catalina.sh jpda run