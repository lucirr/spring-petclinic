#!/bin/sh

set -e -x -u

echo $(pwd)
mvn -s /usr/share/maven/ref/settings-docker.xml -f git-tag/pom.xml -DskipTests=true package

cp git-tag/target/spring-petclinic-1.5.1.jar deploy
