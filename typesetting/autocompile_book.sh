#!/bin/bash

command -v lualatex >/dev/null 2>&1 || { echo >&2 "LuaLaTeX not installed, aborting."; exit 1; }
command -v python >/dev/null 2>&1 || { echo >&2 "Python not installed, aborting."; exit 1; }
command -v lua >/dev/null 2>&1 || { echo >&2 "Lua not installed, aborting."; exit 1; }


rm Tempest_book_kor.aux
rm Tempest_book_kor.log
rm Tempest_book_kor.toc
rm Tempest_book_kor.out

./replacePNs.sh

lualatex Tempest_book_kor.tex
lualatex Tempest_book_kor.tex

mv Tempest_book_kor.toc Tempest_book_kor.tocold
lua edittoc.lua Tempest_book_kor.tocold > Tempest_book_kor.toc

lualatex Tempest_book_kor.tex

rm Tempest_book_kor.tocold

echo "Compile done!"