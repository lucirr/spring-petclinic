#!/bin/sh

set -e -x -u

cd /mnt/cf/workspace/gogit/spring-petclinic/src/main/resources/messages

for i in $(seq 1 1)
do
echo ${i}
vi messages.properties << END
:%s/Welcome/Welcome${i}/g
:wq!
END
git add messages.properties
git commit -m "version"
git push origin master
sleep 1
done

