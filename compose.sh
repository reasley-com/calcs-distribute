#!/bin/bash
docker-compose -f docker-compose.yml up -d
echo "Issuing SSL Certificate"

echo -ne "\r[□□□□□□□□□□□□□□□□□□]"
sleep 2.5

echo -ne "\r[■□□□□□□□□□□□□□□□□□]"
sleep 2.5

echo -ne "\r[■■□□□□□□□□□□□□□□□□]"
sleep 2.5

echo -ne "\r[■■■□□□□□□□□□□□□□□□]"
sleep 2.5

echo -ne "\r[■■■■□□□□□□□□□□□□□□]"
sleep 2.5

echo -ne "\r[■■■■■□□□□□□□□□□□□□]"
sleep 2.5

echo -ne "\r[■■■■■■□□□□□□□□□□□□]"
sleep 2.5

echo -ne "\r[■■■■■■■□□□□□□□□□□□]"
sleep 2.5

echo -ne "\r[■■■■■■■■□□□□□□□□□□]"
sleep 2.5

echo -ne "\r[■■■■■■■■■□□□□□□□□□]"
sleep 2.5

echo -ne "\r[■■■■■■■■■■■□□□□□□□]"
sleep 2.5

echo -ne "\r[■■■■■■■■■■■■□□□□□□]"
sleep 2.5

echo -ne "\r[■■■■■■■■■■■■■□□□□□]"
sleep 2.5

echo -ne "\r[■■■■■■■■■■■■■■□□□□]"
sleep 2.5

echo -ne "\r[■■■■■■■■■■■■■■■□□□]"
sleep 2.5

echo -ne "\r[■■■■■■■■■■■■■■■■□□]"
sleep 2.5

echo -ne "\r[■■■■■■■■■■■■■■■■■□]"
sleep 2.5

echo -ne "\r[■■■■■■■■■■■■■■■■■■]\n"
sleep 2.5

docker exec calcs-proxy mv set_default.conf /etc/nginx/conf.d/default.conf
docker restart calcs-proxy

