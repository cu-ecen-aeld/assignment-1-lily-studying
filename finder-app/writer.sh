#!/bin/bash

if [ $1 ]
then
	writefile=$1
else
	echo "The first argument (writefile) is missing"
	exit 1
fi

if [ $2 ]
then
	writestr=$2
else
	echo "The second argument (writestr) is missing"
	exit 1
fi

mkdir -p `dirname $writefile`

echo $writestr > $writefile

