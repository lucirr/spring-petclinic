#!/bin/sh

set -e -x -u

echo $(pwd)

if [ $TEST_SKIP = "yes" ]; then
    skip="true"
else
    skip="false"
fi

mvn -s /usr/share/maven/ref/settings-docker.xml -f git-pet/pom.xml -DskipTests=$skip $GOAL
