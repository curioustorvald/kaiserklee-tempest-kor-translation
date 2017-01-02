#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd $DIR

echo "Chapter number to make complete TeX (9x for side):"
read index

python maketex.py $index