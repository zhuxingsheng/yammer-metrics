#!/bin/bash

set -e

if [[ ! -e apache-maven-${MAVEN_VERSION} ]]
then
  wget https://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz
  tar -zxf apache-maven-${MAVEN_VERSION}-bin.tar.gz
fi

if [[ ! -e jdk1.8.0_74 ]]
then
  wget -c -O "jdk-8u74-linux-x64.tar.gz" --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u74-b02/jdk-8u74-linux-x64.tar.gz"
  tar xzvf jdk-8u74-linux-x64.tar.gz
fi

$M2/mvn install -T1C -Dmaven.test.skip.exec=true
