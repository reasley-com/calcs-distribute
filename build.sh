#!/bin/bash
cd ~/source/calcs-fe
docker build -t calcs-fe .
cd ~/source/calcs-be
docker build -t calcs-be .
cd ~/source/calcs-proxy
docker build -t calcs-proxy .
