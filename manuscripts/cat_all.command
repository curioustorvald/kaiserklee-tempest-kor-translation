#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd $DIR

python cat.py all

chmod 555 ./Tempest_kor.tex
chmod 555 ./Tempest_side_kor.tex