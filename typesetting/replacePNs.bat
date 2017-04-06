move Tempest_kor.tex Tempest_kor_from.tex
move Tempest_side_kor.tex Tempest_side_kor_from.tex

python replacePN.py

del Tempest_kor_from.tex
del Tempest_side_kor_from.tex
