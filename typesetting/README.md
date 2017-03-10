## 의존성 ##

* 파이선 2.x
* 루아 5.1 이상
* LuaLaTeX과 다음의 패키지
    - luatexko
    - oblivoir
    - mdframed
    - microtype
    - ltablex
* 글꼴: [Linux Libertine](http://www.linuxlibertine.org/index.php?id=91&L=1), [은바탕OTF](https://github.com/minjaesong/unbatang-otf/releases), [스포카 한 산스](http://spoqa.github.io/spoqa-han-sans/), [Noto Sans Runic](https://www.google.com/get/noto/#sans-runr)


## PDF 출력하기 ##

본문(Tempest_kor.tex, Tempest_side_kor.tex)에 __내용이 있는지__ 확인한 다음

    autocompile_book
    autocompile_mobile

중 하나를 실행해주세요.

### 문제 해결 ###

* 컴파일이 안 돼요! (LuaTeX error: cannot find OpenType font file for reading)

    - 터미널에서 다음의 두 명령어를 실행하고 다시 컴파일해 주세요.  
    ```luaotfload-tool --cache=erase```  
    ``` texhash```


## 저작권 ##

이하의 저작물은 __[크리에이티브 커먼즈 저작자표시-비영리-동일조건변경허락 4.0 국제 (CC BY-NC-SA 4.0)](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.ko)__ 라이선스로 배포됩니다.

 - 템페스트 © 2014-2017 Torvald (minjaesong)
 - 템페스트—고급스러운 식사 © 2014-2016 Torvald (minjaesong)
 - 템페스트—체크메이트 © 2014-2016 Torvald (minjaesong)
 - 템페스트—불운의 수 십삼 © 2014-2016 Torvald (minjaesong)
 - 템페스트—이루어질 뻔한 만남 © 2014-2016 Torvald (minjaesong)
 - Tempest © 2013-2015 kaiserklee (Kenneth)
 - Tempest: Fine Dining © 2014 kaiserklee (Kenneth)
 - Tempest: Checkmate © 2014 kaiserklee (Kenneth)
 - Tempest: Unlucky Number Thirteen © 2014 kaiserklee (Kenneth)
 - Tempest: An Almost Meeting © 2014 kaiserklee (Kenneth)


PDF 작성을 위한 LaTeX, 파이썬, 루아, 셸, 배치 스크립트는 __MIT 허가서__에 의해 배포됩니다.

© 2014-2016 Torvald (minjaesong)

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.


## 왜 이딴 걸 깃허브에 올리는 겁니까? ##

LaTeX 템플릿의 개발과 공유의 목적도 있지만, 진정한 이유는 “번역이란 작업에 Git를 접목시키면 어떻게 될까”에 관한 실험입니다. 이 Git화된 작업에는 협업도 포함됩니다, 그러니 크게 관심이 있으시다면 템플릿이든 번역문이든 이슈를 남겨주시거나 풀 리퀘스트를 올려주시면 감사하겠습니다 (풀 리퀘스트의 경우 번역/편집자 목록에 유저네임이 올라갑니다).
