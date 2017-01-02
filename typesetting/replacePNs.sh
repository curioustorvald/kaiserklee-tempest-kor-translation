#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd $DIR

mv ./Tempest_kor.tex ./Tempest_kor_from.tex
mv ./Tempest_side_kor.tex ./Tempest_side_kor_from.tex

python ./replacePN.py

rm ./Tempest_kor_from.tex
rm ./Tempest_side_kor_from.tex
