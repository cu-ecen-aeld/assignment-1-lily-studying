#!/bin/bash

if [ $2 ]
then
	searchstr=$2
else
	echo "The second argument (searchstr) is missing"
	exit 1
fi

if [ -d $1 ]
then
	filesdir=$1
else
	echo "Directory not found. You need to specify a directory as the first argument (filesdir)"
	exit 1
fi

num_files=`find $filesdir -type f | wc -l | sed 's/ //g'`
num_matches=`grep -F $searchstr -r $filesdir | wc -l | sed 's/ //g'`

echo "The number of files are $num_files and the number of matching lines are $num_matches"
