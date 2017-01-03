#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd $DIR

ind=( 6 9 10 11 35 ) # edit this array like: ( 5 21 26 37 )

echo "You are about to make TeX for: "
for var in "${ind[@]}"
do
	echo "Chapter ${var}"
done
echo "Are you sure? (terminate process to quit)"
read arstarst

for var in "${ind[@]}"
do
	python maketex.py $var
done
