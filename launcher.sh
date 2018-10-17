#!/bin/bash

#clear log file
echo "" > /tmp/log.log

#run docker service
service docker start

#daemon
sleep 10s
service docker restart

echo 'restart container.'
#delete useless container
docker stop $(docker ps -q)
docker rm $(docker ps -aq)
#start container
docker run -d -p  80:80 --name exp game:1 
echo 'exit.'

#nohup /bin/bash /launcher.sh > /tmp/log.log 2>&1 &
