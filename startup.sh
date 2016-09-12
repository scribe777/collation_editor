#!/bin/bash
BASEDIR=$(pwd)

java -jar collatex/collatex-tools-1.8-SNAPSHOT.jar --http &
COLLATEXPID=$!

python python/bottle_server.py $BASEDIR

kill $COLLATEXPID
