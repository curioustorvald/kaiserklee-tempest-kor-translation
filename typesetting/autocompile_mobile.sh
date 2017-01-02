#!/bin/bash

command -v lualatex >/dev/null 2>&1 || { echo >&2 "LuaLaTeX not installed, aborting."; exit 1; }
command -v python >/dev/null 2>&1 || { echo >&2 "Python not installed, aborting."; exit 1; }
command -v lua >/dev/null 2>&1 || { echo >&2 "Lua not installed, aborting."; exit 1; }

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd $DIR


rm Tempest_mobile_kor.aux
rm Tempest_mobile_kor.log
rm Tempest_mobile_kor.toc
rm Tempest_mobile_kor.out

./replacePNs.sh

lualatex Tempest_mobile_kor.tex
lualatex Tempest_mobile_kor.tex

mv Tempest_mobile_kor.toc Tempest_mobile_kor.tocold
lua edittoc.lua Tempest_mobile_kor.tocold > Tempest_mobile_kor.toc

lualatex Tempest_mobile_kor.tex

rm Tempest_mobile_kor.tocold

echo "Compile done!"