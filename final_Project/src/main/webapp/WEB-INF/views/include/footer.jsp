<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <!-- Start Footer -->
            <footer id="footer-main" class="accordion-wrapper standard" data-module="footer, accordion">
                <div class="wrapper-back-to-top">
                    <a class="back-to-top" href="#">위로 이동</a>
                </div>
                <div class="content-inner">
                    <!-- <section class="footer-nav">
                        <div class="footer-section">
                            <div>
                                <div class="footer-group-title accordion-button footer-group-title-hidden-small">특별한 서비스</div>
                                <ul class="footer-group accordion-drawer footer-group-title-hidden-small">
                                    <li class="footer-item">
                                        <a class="footer-link  has-icon gift-wrap overlay-open" href="#">구찌 선물포장 서비스</a>
                                    </li>
                                    <li class="footer-item">
                                        <a class="footer-link  has-icon gift-wrap overlay-open" href="#">무이자 할부 서비스</a>
                                    </li>
                                    <li class="footer-item">
                                        <a class="footer-link has-icon dinner " href="#">Gucci Osteria da Massimo Bottura</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="accordion-item accordion-item-mutually-exclusive accordion-item-default accordion-item-small _close _ready">
                                <div class="footer-group-title accordion-button form-zip-code">매장 찾기</div>
                                <ul class="footer-group accordion-drawer form-zip-code" style="">
                                    <li class="footer-item">
                                        <form action="/kr/ko/store" method="get">
                                            <label class="visually-hidden" for="store-location">Enter zip code::</label>
                                            <input class="text-input" id="store-location" placeholder="도시 및 지역" type="text" name="store-search" style="font-family: ts-unused;">
                                            <span class="store-locator"></span>
                                            <input class="submit-button" type="submit" value="Submit">
                                        </form>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="footer-section">
                            <div class="accordion-item accordion-item-mutually-exclusive accordion-item-default accordion-item-small _close _ready">
                                <div class="footer-group-title accordion-button">고객 문의</div>
                                <ul class="footer-group accordion-drawer" style="">
                                    <li class="footer-item ">
                                        <a target="_blank" class="footer-link " href="#">전화: 1577-1921</a>
                                    </li>
                                    <li class="footer-item ">
                                        <a target="_blank" class="footer-link " href="#">메일: eshop@kr.gucci.com</a>
                                    </li>
                                    <li class="footer-item ">
                                        <a target="_blank" class="footer-link  highlight" href="#">자주 묻는 질문(FAQ)</a>
                                    </li>
                                    <li class="footer-item ">
                                        <a target="_blank" class="footer-link  highlight" href="#">교환/환불 정책</a>
                                    </li>
                                    <li class="footer-item ">
                                        <a target="_blank" class="footer-link " href="#">쇼핑가이드</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="footer-section">
                            <div class="accordion-item accordion-item-mutually-exclusive accordion-item-default accordion-item-small _close _ready">
                                <div class="footer-group-title accordion-button">기업 정보</div>
                                <ul class="footer-group accordion-drawer" style="">
                                    <li class="footer-item ">
                                        <a target="_blank" class="footer-link " href="#">Gucci 정보</a>
                                    </li>
                                    <li class="footer-item ">
                                        <a class="footer-link " href="#">Gucci Garden</a>
                                    </li>
                                    <li class="footer-item ">
                                        <a class="footer-link " href="#">Gucci Equilibrium</a>
                                    </li>
                                    <li class="footer-item ">
                                        <a class="footer-link " href="#">Careers</a>
                                    </li>
                                    <li class="footer-item ">
                                        <a target="_blank" class="footer-link  highlight" href="#">개인정보처리방침</a>
                                    </li>
                                    <li class="footer-item ">
                                        <a target="_blank" class="footer-link " href="#">이용약관</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="footer-section">
                            <div class="accordion-item accordion-item-mutually-exclusive accordion-item-default accordion-item-small _close _ready">
                                <div class="footer-group-title accordion-button">구찌를 만나보세요</div>
                                <ul class="footer-group accordion-drawer" style="">
                                    <li class="footer-item ">
                                        <a target="_blank" class="footer-link has-icon has-icon facebook" href="#">Facebook</a>
                                    </li>
                                    <li class="footer-item ">
                                        <a target="_blank" class="footer-link has-icon has-icon instagram" href="#">Gucci</a>
                                    </li>
                                    <li class="footer-item ">
                                        <a target="_blank" class="footer-link has-icon has-icon instagram" href="#">Gucci Beauty</a>
                                    </li>
                                    <li class="footer-item ">
                                        <a target="_blank" class="footer-link has-icon has-icon youtube" href="#">YouTube</a>
                                    </li>
                                    <li class="footer-item ">
                                        <a target="_blank" class="footer-link has-icon has-icon twitter" href="#">Twitter</a>
                                    </li>
                                    <li class="footer-item  footer-qr-code">
                                        <a class="footer-link has-icon qr-code kakao" href="#">Kakao Plus Friend</a>
                                        <div class="qr-code-img">
                                            <img alt="QR code" src="/_ui/responsive/common/images/kakao-qr-code.jpg">
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </section>
                    <section class="side-content">
                        <div class="side-wrapper">
                            <div class="side-wrapper-sub">
                                <article class="form-zip-code">
                                    <form method="get">
                                        <div class="footer-group-title accordion-button">
                                            <label for="ftr-store-location">매장 찾기</label>
                                        </div>
                                        <div class="field-wrapper">
                                            <input class="text-input" id="ftr-store-location" placeholder="도시 및 지역" type="text" name="store-search" style="font-family: ts-unused;">
                                            <input type="hidden" value="store-locator" name="search-cat">
                                            <span class="store-locator">&nbsp;</span>
                                            <input class="submit-button" type="submit" value="Submit">
                                        </div>
                                    </form>
                                </article>
                                <div class="sub-hideonmobile"></div>
                                <nav class="other-sites">
                                    <ul class="group">
                                        <li>
                                            <div class="app-group " id="app-group">
                                                <button type="button" class="icon gucci-app" aria-expanded="false" aria-controls="app-links" id="app-trigger">
                                                    <svg aria-hidden="true" class="icon-normal">
                                                        <use xlink:href="#svg-icon-gucci-app"></use>
                                                    </svg>
                                                    <svg aria-hidden="true" class="icon-hover">
                                                        <use xlink:href="#svg-icon-gucci-app-hover"></use>
                                                    </svg>
                                                    <span class="visually-hidden"></span>
                                                </button>
                                                <div id="app-links" class="app-links">
                                                    <div class="app-links-inner">
                                                        <a href="#" class="app-apple" id="app-apple-link" target="_blank"></a>
                                                        <a href="#" class="app-android" id="app-android-link" target="_blank"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <a class="icon equilibrium" href="#">
                                                <svg aria-hidden="true">
                                                    <use xlink:href="#svg-icon-equilibrium"></use>
                                                </svg>
                                                <span class="visually-hidden"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="icon garden" href="#">
                                                <svg aria-hidden="true">
                                                    <use xlink:href="#svg-icon-garden"></use>
                                                </svg>
                                                <span class="visually-hidden"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </section> -->
                    <p class="copyright korea">
                        <br>
                        <br>
                        <img src="http://koreate.net/imgs/re_main/flogo.png" title="main" alt="한국기술교육직업전문학교 흑백의 로고 이미지입니다.">
                    </p>
                    <p class="copyright korea">
                        MADE WEDDING - MW<br>
                        부산광역시 동래구 충렬대로 84 영남빌딩 9층 901호<br>
                        Tel : +82) 051-714-5709&nbsp;&nbsp;/&nbsp;&nbsp;Fax : +82) 051-1234-5678<br>
                        이메일 문의&nbsp;:&nbsp;<u><a style="color: inherit; text-decoration: none; outline: 0 none;" href="mailto: webmaster@master.com">webmaster@master.com</a></u><br>
                        호스팅 서비스&nbsp;:&nbsp;<u><a style="color: inherit; text-decoration: none; outline: 0 none;" href="https://www.cafe24.com/">www.cafe24.com</a></u>
                    </p>
                    <p class="copyright korea"></p>
                </div>
            </footer>
            <!-- End Footer -->
        </div>
    </div>
</body>
</html>