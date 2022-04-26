#!/bin/bash
#retrieve current pihole container ID
piholeID=$(docker ps -aqf "name=pihole")
#kill current pihole container ID
docker container kill $piholeID
#pull latest pihole image
docker pull pihole/pihole:latest
#redeploy pihole using docker-compose
docker-compose up -d
newpiholeID=$(docker ps -aqf "name=pihole")
#display new ID
echo "Here is the new container ID for pihole : $newpiholeID"
