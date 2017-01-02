#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd $DIR

echo "Are you sure? (press return key)"
read arstarstarstarst

for i in {1..52}
do 
	python maketex.py $i
done

for i in {91..94}
do 
	python maketex.py $i
done