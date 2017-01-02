#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd $DIR

python cat.py main

chmod 555 ./Tempest_kor.tex