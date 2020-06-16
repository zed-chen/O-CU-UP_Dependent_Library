#!/bin/sh
ulimit -q unlimited
DIR=`pwd`
debugPath="$DIR/debug"
if [[ ! -d "$debugPath" ]]
then
    mkdir "$debugPath"	
fi

if [ $1 = "cuup" ]
then
	cd debug/CUUP/app
	./clean.sh
	sleep 1
	./start.sh
	sleep 10
	./CuUpApp
fi
