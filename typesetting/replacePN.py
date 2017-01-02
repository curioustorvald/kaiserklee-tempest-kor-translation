# -*- coding: UTF-8 -*-
# Must be in sync with proper_noun_exception_list.tex
replacements = {
'안나야':'\\PNAnnaVocAndPost{}',
'엘사야':'\\PNElsaVocAndPost{}',

'안나':'\\PNAnna{}',
'엘사':'\\PNElsa{}',
'마르쿠스':'\\PNMarkus{}',
'구스타프':'\\PNGustaf{}',
'키루스':'\\PNCyrus{}',
'토비아스':'\\PNTobias{}',
'알바르':'\\PNAlvard{}',
'올리버':'\\PNOliver{}',
'리드':'\\PNReid{}',
'에드문드':'\\PNEdmund{}',
'한스':'\\PNHans{}',
'첼리나':'\\PNCelina{}',
'엘미라':'\\PNElmira{}',
'아그다르':'\\PNAgdar{}',
'게르다':'\\PNGerda{}',
'카이':'\\PNKai{}',
'크리스토프':'\\PNKristoff{}',
'마법사':'\\PNSorcerer{}',
'파비안':'\\PNFabian{}',
'스테판':'\\PNStephan{}',
'알렉':'\\PNAlek{}',
'오든':'\\PNOdon{}',
'라파엘':'\\PNRafael{}',
'사울':'\\PNSaul{}',
'패비':'\\PNPabbie{}',
'불다':'\\PNBulda{}',

'아렌델':'\\PNArendelle{}',
'서던 제도':'\\PNSouthernIsles{}',
'위즐턴':'\\PNWeselton{}',
'코로나':'\\PNCorona{}',

'트롤':'\\PNRaceTroll{}'
}

with open('./Tempest_kor_from.tex') as infile, open('./Tempest_kor.tex', 'w') as outfile:
    for line in infile:
        for src, target in replacements.iteritems():
            line = line.replace(src, target)
        outfile.write(line)

with open('./Tempest_side_kor_from.tex') as infile, open('./Tempest_side_kor.tex', 'w') as outfile:
    for line in infile:
        for src, target in replacements.iteritems():
            line = line.replace(src, target)
        outfile.write(line)