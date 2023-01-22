del Tempest_book_kor.aux
del Tempest_book_kor.log
del Tempest_book_kor.toc
del Tempest_book_kor.out

call replacePNs.bat

lualatex Tempest_book_kor.tex
lualatex Tempest_book_kor.tex

move Tempest_book_kor.toc Tempest_book_kor.tocold
lua edittoc.lua Tempest_book_kor.tocold > Tempest_book_kor.toc

lualatex Tempest_book_kor.tex

del Tempest_book_kor.tocold

echo "Compile done!"