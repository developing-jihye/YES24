<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String home = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yes24-국내도서</title>
    <!-- 폰트어썸 cdn -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- pc용 파비콘 -->
    <link rel="shortcut icon" href="../images/favicon/favicon_yes.ico"> 
    <!-- 디바이스용 파비콘 -->
    <link rel="apple-touch-icon=precomposed" href="../images/favicon/favicon_yes.ico">
    <!-- prefix js파일 -->
    <script src="../js/prefixfree.min.js"></script>
    <!-- 리셋 -->
    <link rel="stylesheet" href="../css/reset.css">
    <link rel="stylesheet" href="../css/book_kr.css">
    <!-- 박스 슬라이더 CSS -->
    <link rel="stylesheet" href="../css/jquery.bxslider.css">
    <!-- JS 플러그인 파일 -->
    <script src="../js/jquery-1.12.4.min.js"></script>
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/jquery.scrollTo.min.js"></script>
    <!-- 박스 슬라이더 플러그인 파일 -->
    <script src="../js/jquery.bxslider.js"></script>
    <!-- 박스 스와이퍼 플러그인 파일 -->
    <script src="../js/swiper-bundle.js"></script>

    <!-- Swiper JS,CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    
    <!-- 슬라이드 -->
    <script>
        $(function(){
            $('.slider_gallery').bxSlider({
                auto: 'true',
                mode:'horizontal',
                pager: 'true',
                pause: '5000',
                speed: '1000',
                slideWidth: 980,
            });

            $('.subSlider_gallery').bxSlider({
                auto: 'true',
                mode:'horizontal',
                pager: false,
                pause: '5000',
                speed: '1000',
                slideWidth: 980,
            });
        });
    </script>
</head>
<body>
    <!-- 탑버튼/광고 -->
    <div class="circle_btn">
        <div class="circle_ad">
            <div class="ad_btn"><a href="#"><img src="../images/icon_ad_1.png" alt="Ad Image"></a></div>
        </div>
        <div class="circle_top">
            <div class="top_btn"><a href="#wrap"><img src="../images/icon_stepOut_48.png" alt="Top Button"></a></div>
        </div>
    </div>
    <!-- /탑버튼/광고 -->
    <div id="wrap">
        <!-- Header -->
        <header class="header w1200">
        	<jsp:include page="../includes/header.jsp"/>
        </header>
        <!-- Header -->
        <!-- Main -->
        <main>
            <section>
                <!-- Content Box -->
                <!-- Sub_Top -->
                <div class="sub w1200">
                    <div id="detailIndexBox">
                        <ul class="index_list">
                            <li><a href="#"><i class="fa fa-home" aria-hidden="true"></i></a></li>
                            <li><a href="#" class="btn_open">국내도서&nbsp;<span><i class="fa fa-angle-down" aria-hidden="true"></i></span></a></li>
                            <li><a href="#" class="btn_open">전체&nbsp;<span><i class="fa fa-angle-down" aria-hidden="true"></i></span></a></li>
                        </ul>
                    </div>                                 
                    <div class="main_container">
                        <!-- Aside -->
                        <div class="aside w220">
                            <h2>국내도서</h2>
                            <ul>
                                <li><a href="#">소설</a></li>
                                <li><a href="#">시&#47;에세이</a></li>
                                <li><a href="#">인문</a></li>
                                <li><a href="#">가정&#47;육아</a></li>
                                <li><a href="#">요리</a></li>
                                <li><a href="#">건강</a></li>
                                <li><a href="#">취미&#47;실용&#47;스포츠</a></li>
                                <li><a href="#">경제&#47;경영</a></li>
                                <li><a href="#">자기계발</a></li>
                                <li><a href="#">정치&#47;사회</a></li>
                                <li><a href="#">역사&#47;문화</a></li>
                                <li><a href="#">종교</a></li>
                                <li><a href="#">예술&#47;대중문화</a></li>
                                <li><a href="#">중&#47;고등참고서</a></li>
                                <li><a href="#">기술&#47;공학</a></li>
                                <li><a href="#">외국어</a></li>
                                <li><a href="#">과학</a></li>
                                <li><a href="#">취업&#47;수험서</a></li>
                                <li><a href="#">여행</a></li>
                                <li><a href="#">컴퓨터&#47;IT</a></li>
                                <li><a href="#">잡지</a></li>
                                <li><a href="#">청소년</a></li>
                                <li><a href="#">초등참고서</a></li>
                                <li><a href="#">유아(0~7세)</a></li>
                                <li><a href="#">어린이(초등)</a></li>
                                <li><a href="#">만화</a></li>
                                <li><a href="#">대학교재</a></li>
                                <li><a href="#">한국소개도서</a></li>
                            </ul>
                        </div>
                        <!-- /Aside -->
    
                        <!-- Container -->
                       <div class="container w980">
                            <!-- Slide -->
                            <div class="gallery_wrap">
                                <ul class="slider_gallery">
                                    <li><img src="../images/sub_silde_1.png" alt="silder1"></li>
                                    <li><img src="../images/sub_silde_2.jpg" alt="silder2"></li>
                                    <li><img src="../images/sub_silde_3.jpg" alt="silder3"></li>
                                    <li><img src="../images/sub_silde_4.jpg" alt="silder4"></li>
                                    <li><img src="../images/sub_silde_5.jpg" alt="silder4"></li>
                                </ul>
                            </div>
                            <!-- /Slide -->
        
                            <!-- Issue&Trend -->
                            <div class="issue_box">
                                <h2 class="con_title">이슈&nbsp;&amp;&nbsp;트렌드</h2>
                                <ul class="keywords">
                                    <li>
                                        <a href="#">한강&nbsp;작가&nbsp;메디치상&nbsp;수상!</a>
                                    </li>
                                    <li>
                                        <a href="#">핑크퐁&nbsp;릴레이&nbsp;특가</a>
                                    </li>
                                    <li>
                                        <a href="#">리커버&nbsp;K:89&nbsp;『페인트』</a>
                                    </li>
                                    <li>
                                        <a href="#">겨울&nbsp;그램책&nbsp;X&nbsp;스티커팩</a>
                                    </li>
                                    <li>
                                        <a href="#">크리스마스&nbsp;완구&nbsp;최대&nbsp;75&#37;</a>
                                    </li>
                                    <li>
                                        <a href="#">1일&nbsp;1장의&nbsp;힘</a>
                                    </li>
                                    <li>
                                        <a href="#">아이쿠가&nbsp;용돈카드</a>
                                    </li>
                                    <li>
                                        <a href="#">트렌드&nbsp;코리아&nbsp;2024</a>
                                    </li>
                                    <li>
                                        <a href="#">시대예보:&nbsp;핵개인의&nbsp;시대</a>
                                    </li>
                                    <li>
                                        <a href="#">예비중/고&nbsp;추천</a>
                                    </li>
                                </ul>
                            </div>
                            <!-- /Issue&Trend -->
        
                            <!-- 오늘의선택 + 일간베스트 -->
                            <div class="today_group">
                                <!-- 오늘의선택 -->
                                <div class="today_pick">
                                <h2 class="con_title">오늘의 선택</h2>
                                    <div class="today_pick_info">
                                        <a href="./detail.jsp"><img src="../images/sub_thumb_book_1.jpg" alt="책이미지" id="big"></a>
                                        <div class="txt">
                                            <div class="today_pick_desc00 today_pick_desc">
                                                <h3>
                                                    <a href="./detail.jsp">이토록 멋진 인생이라니</a>
                                                </h3>
                                                <p><a href="./detail.jsp">모리 슈워츠 저자 · 나무옆의자</a></p>
                                                <p><span class="discount"><a href="./detail.jsp">10%</span>&nbsp;16,920원&nbsp;&nbsp;<span class="point">940p(5%)</span></a></p>
                                                <p><a href="./detail.jsp"><i class="fa fa-commenting fa-flip-horizontal" aria-hidden="true"></i>&nbsp;주간베스트 국내도서 145위 · 인문 15위</a></p>
                                                <p>
                                                    <a href="./detail.jsp">
                                                        우리의 내일은 얼마나 더 찬란할까? <br>
                                                        인생이라는 가능성의 시간, <br>
                                                        우리를 완성으로 이끄는 모리의 따스한 메시지
                                                    </a>
                                                </p>
                                            </div>
    
                                            <div class="today_pick_desc01 today_pick_desc">
                                                <h3>
                                                    <a href="#">다시 페미니즘의 도전</a>
                                                </h3>
                                                <p><a href="#">정희진 · 교양인</a></p>
                                                <p><a href="#"><span class="discount">10%</span>&nbsp;16,200원&nbsp;&nbsp;<span class="point">900P(5%)</span></a></p>
                                                <p><a href="#"><i class="fa fa-commenting fa-flip-horizontal" aria-hidden="true"></i>&nbsp;주간베스트 국내도서 313위 · 정치/사회 5위</a></p>
                                                <p>
                                                    <a href="#">
                                                        여성 언어의 분화와 남성 권력의 반격이 뒤엉킨 시대에 한국 페미니즘의 길을 찾는 새로운 도전! <br>
                                                        “지금은 여성주의 담론을 혁신할 때다” <br>
                                                        다시 페미니즘 최전선에 선 정희진의 도발적이고 <br> 발본적인 성정치학 논전!
                                                    </a>
                                                </p>
                                            </div>

                                            <div class="today_pick_desc02 today_pick_desc">
                                                <h3>
                                                    <a href="#">사람 공부</a>
                                                </h3>
                                                <p><a href="#">조윤제 · 청림출판</a></p>
                                                <p><a href="#"><span class="discount">10%</span>&nbsp;16,650원&nbsp;&nbsp;<span class="point">920p(5%)</span></a></p>
                                                <p><a href="#"><i class="fa fa-commenting fa-flip-horizontal" aria-hidden="true"></i>&nbsp;주간베스트 국내도서 153위 · 자기계발 21위</a></p>
                                                <p>
                                                    <a href="#">《논어》의 위대한 문장을 통해 이끌어낸, 2,500년 동안 이어져온 ‘사람 공부’의 지혜. ‘다산의 마지막’ 시리즈로 동양고전 읽기의 새로운 바람을 일으킨 저자 조윤제가 오늘날 우리가 살아가는 데 필요한 관계 맺음의 <br> 도道를 전한다.</a>
                                                </p>
                                            </div>

                                            <div class="today_pick_desc03 today_pick_desc">
                                                <h3>
                                                    <a href="#">SKY 로드맵</a>
                                                </h3>
                                                <p><a href="#">이병훈 · 쌤앤파커스</a></p>
                                                <p><a href="#"><span class="discount">10%</span>&nbsp;16,200원&nbsp;&nbsp;<span class="point">900p(5%)</span></a></p>
                                                <p><a href="#"><i class="fa fa-commenting fa-flip-horizontal" aria-hidden="true"></i>&nbsp;주간베스트 국내도서 252위 · 가정/육아 8위</a></p>
                                                <p>
                                                    <a href="#">
                                                        대한민국 대표 공부 멘토로 종횡무진 활약하는 이병훈 소장의 15년 멘토링 비법을 총결산한 책이다. 
                                                        영어유치원에서부터 대학입시까지 부모들이 알고 싶어 하는 정보를 최대한 자세하게 담았다. 
                                                        자녀를 공부하는 아이로 키우고 싶은 부모를 위해 유아기부터 고1까지 5시기로 나눠 부모가 해야 할 일을 알려 준다
                                                    </a>
                                                </p>
                                            </div>

                                            <div class="today_pick_desc04 today_pick_desc">
                                                <h3>
                                                    <a href="#">번영하는 도시, 몰락하는 도시</a>
                                                </h3>
                                                <p><a href="#">이언 골딘 , 톰 리-데블린 · 어크로스</a></p>
                                                <p><a href="#"><span class="discount">10%</span>&nbsp;16,920원&nbsp;&nbsp;<span class="point">940p(5%)</span></a></p>
                                                <p><a href="#"><i class="fa fa-commenting fa-flip-horizontal" aria-hidden="true"></i>&nbsp;주간베스트 국내도서 239위 · 정치/사회 3위</a></p>
                                                <p>
                                                    <a href="#">
                                                        로컬부터 메가시티까지, 세계의 이목이 집중되고 있는 ‘도시’에 관한 뜨거운 논의가 담긴 책. 옥스퍼드대 석학 이언 골딘과 〈이코노미스트〉 필진인 톰 리-데블린은 역사학, 경제학, 지리학, 사회학 등 폭넓은 분야의 통찰을 모아 
                                                        도시의 과거, 현재, 미래를 두루 살피는 흥미진진한 여정을 펼친다.
                                                    </a>
                                                </p>
                                            </div>

                                            <div class="today_pick_desc05 today_pick_desc">
                                                <h3>
                                                    <a href="#">미키7: 반물질의 블루스</a>
                                                </h3>
                                                <p><a href="#">에드워드 애슈턴 · 황금가지</a></p>
                                                <p><a href="#"><span class="discount">10%</span>&nbsp;15,300원&nbsp;&nbsp;<span class="point">850p(5%)</span></a></p>
                                                <p><a href="#"><i class="fa fa-commenting fa-flip-horizontal" aria-hidden="true"></i>&nbsp;주간베스트 소설 147위</a></p>
                                                <p>
                                                    <a href="#">
                                                        봉준호 감독의 차기 SF 영화의 원작『미키7』의 후속작.
                                                        전편에서 풀어내지 못한 이야기를 매듭짓는 완결편. <br>
                                                        「기생충」으로 아카데미상을 수상한 봉준호 감독의 2024년 SF 기대작 「미키17」, 그 원작소설로 주목받은 SF 장편소설 『미키7』의 후속작이 황금가지에서 출간되었다.
                                                    </a>
                                                </p>
                                            </div>

                                            <div class="today_pick_desc06 today_pick_desc">
                                                <h3>
                                                    <a href="#">인생은 순간이다</a>
                                                </h3>
                                                <p><a href="#">김성근 · 다산북스</a></p>
                                                <p><a href="#"><span class="discount">10%</span>&nbsp;16,200원&nbsp;&nbsp;<span class="point">900p(5%)</span></a></p>
                                                <p><a href="#"><i class="fa fa-commenting fa-flip-horizontal" aria-hidden="true"></i>&nbsp;주간베스트 국내도서 16위 · 시/에세이 4위</a></p>
                                                <p>
                                                    <a href="#">
                                                        “죽었다 깨어나도, 나이를 먹었다 해도 <br>
                                                        계속 성장하지 않으면 자리가 없어. <br>
                                                        시선은 늘 앞으로, 미래로.” <br>
                                                        82세 현역 감독 김성근 에세이
                                                    </a>
                                                </p>
                                            </div>

                                            <div class="today_pick_desc07 today_pick_desc">
                                                <h3>
                                                    <a href="#">벌거벗은 한국사: 영웅편</a>
                                                </h3>
                                                <p><a href="#">tvN STORY 〈벌거벗은 한국사〉 제작팀 · 프런트페이지</a></p>
                                                <p><a href="#"><span class="discount">10%</span>&nbsp;16,920원&nbsp;&nbsp;<span class="point">940p(5%)</span></a></p>
                                                <p><a href="#"><i class="fa fa-commenting fa-flip-horizontal" aria-hidden="true"></i>&nbsp;주간베스트 국내도서 510위 · 역사/문학 13위</a></p>
                                                <p>
                                                    <a href="#">
                                                        tvN STORY 간판 프로그램 〈벌거벗은 한국사〉에서 가장 사랑받은 영웅들의 이야기를 모은『벌거벗은 한국사: 영웅편』이 우리 곁을 찾아왔다. 
                                                        회차를 거듭할수록 역사 강의 중 가장 생생하고 흥미롭다는 찬사를 받는 〈벌거벗은 한국사〉는 대한민국 대표 역사 커뮤니케이터 최태성이 안내하는 한국사 스토리텔링쇼로 입지를 굳혔다.
                                                    </a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 광고 -->
                                    <div class="ad">
                                        <i class="fa fa-gift" aria-hidden="true"></i>&nbsp;
                                        <p>
                                            크리스마스 기획저 모음전&국내도서/외국도서 2만원 이상 구매 시 엽서세트(엽서 1매+봉투 1매 구성)
                                            택 1 증정(포인트 차감, 한정수량)
                                        </p>
                                    </div>
                                    <!-- /광고 -->
                                    <div class="line"></div>
                                    <!-- Thumb 이미지 -->
                                    <div class="swiper-container">
                                        <ul class="thumb_img swiper-wrapper">
                                            <li class="swiper-slide active" onclick="tab_menu(0)"><img src="../images/sub_thumb_book_1.jpg" alt="Thumb Image" class="small"></li>
                                            <li class="swiper-slide" onclick="tab_menu(1)"><img src="../images/sub_thumb_book_2.jpg" alt="Thumb Image" class="small"></li>
                                            <li class="swiper-slide" onclick="tab_menu(2)"><img src="../images/sub_thumb_book_3.jpg" alt="Thumb Image" class="small"></li>
                                            <li class="swiper-slide" onclick="tab_menu(3)"><img src="../images/sub_thumb_book_4.jpg" alt="Thumb Image" class="small"></li>
                                            <li class="swiper-slide" onclick="tab_menu(4)"><img src="../images/sub_thumb_book_5.jpg" alt="Thumb Image" class="small"></li>
                                            <li class="swiper-slide" onclick="tab_menu(5)"><img src="../images/sub_thumb_book_6.jpg" alt="Thumb Image" class="small"></li>
                                            <li class="swiper-slide" onclick="tab_menu(6)"><img src="../images/sub_thumb_book_7.jpg" alt="Thumb Image" class="small"></li>
                                            <li class="swiper-slide" onclick="tab_menu(7)"><img src="../images/sub_thumb_book_8.jpg" alt="Thumb Image" class="small"></li>
                                        </ul>
                                        <!-- Swiper Control -->
                                        <div class="swiper_control">
                                            <div class="swiper_line"></div>
                                            <div class="swiper_control_btn">
                                                <button class="swiper-button-next"></button>
                                                <button class="swiper-button-prev"></button>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /Thumb 이미지 -->
                                    
                                </div>
                                <!-- /오늘의선택 -->
                                <!-- 일간베스트 -->
                                <div class="today_best">
                                    <div class="today_best_header">
                                        <h2 class="con_title">일간 베스트</h2>
                                        <p><a href="#">더보기&nbsp;<i class="fa fa-plus-square-o" aria-hidden="true"></i></a></p>
                                    </div>
                                    <div class="top_two">
                                        <ul class="best">
                                            <li><a href="#"><img src="../images/sub_best_book_1.jpg" alt="book image1"></a></li>
                                            <li>
                                                <ul>
                                                    <li class="rank">1</li>
                                                    <li class="book_title"><a href="#">마흔에 읽는 쇼펜하우어</a></li>
                                                    <li class="author"><a href="#">강용수 · 유노북스</a></li>
                                                    <li class="price"><a href="#"><span class="discount">10%</span>&nbsp;15,300&nbsp;원&nbsp;<span class="point">(850P)</span></a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                        <ul class="second_best">
                                            <li><a href="#"><img src="../images/sub_best_book_2.jpg" alt="book image2"></a></li>
                                            <li>
                                                <ul>
                                                    <li class="rank">2</li>
                                                    <li class="book_title"><a href="#">내가 생각한 인생이 아니야</a></li>
                                                    <li class="author"><a href="#">류시화 · 수오서재</a></li>
                                                    <li class="price"><a href="#"><span class="discount">10%</span>&nbsp;16,200&nbsp;원&nbsp;<span class="point">(900P)</span></a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="line"></div>
                                    <div class="top_rest">
                                        <ul>
                                            <li class="rank">3</li>
                                            <li><a href="#">주술회전 24 + 2024 캘린더 세트(한정판)</a></li>
                                        </ul>
                                        <ul>
                                            <li class="rank">4</li>
                                            <li><a href="#">트렌드 코리아 2024</a></li>
                                        </ul>
                                        <ul>
                                            <li class="rank">5</li>
                                            <li><a href="#">주술회전 24: 주태대전 재귀</a></li>
                                        </ul>
                                        <ul>
                                            <li class="rank">6</li>
                                            <li><a href="#">세이노의 가르침</a></li>
                                        </ul>
                                        <ul>
                                            <li class="rank">7</li>
                                            <li><a href="#"> 황금종이</a></li>
                                        </ul>
                                        <ul>
                                            <li class="rank">8</li>
                                            <li><a href="#">퓨처 셀프</a></li>
                                        </ul>
                                        <ul>
                                            <li class="rank">9</li>
                                            <li><a href="#">남에게 보여주려고 인생을 낭비하지 마라</a></li>
                                        </ul>
                                        <ul>
                                            <li class="rank">10</li>
                                            <li><a href="#">황금종이 2</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- /일간베스트 -->
                            </div>
                            <!-- /오늘의선택 + 일간베스트 -->
                        <!-- 광고 배너 -->
                        <div class="adver w980">
                            <ul class="subSlider_gallery">
                                <li><img src="../images/sub_slide_100.png" alt="광고이미지1"></li>
                                <li><img src="../images/sub_slide_200.png" alt="광고이미지2"></li>
                                <li><img src="../images/sub_slide_300.png" alt="광고이미지3"></li>
                                <li><img src="../images/sub_slide_400.png" alt="광고이미지4"></li>
                            </ul>
                        </div>
                        <!-- /광고 배너 -->
                        <!-- 신규도서 10권 -->
                        <div class="new10 w980">
                            <div class="title_box">
                                <h2 class="title">신규도서</h2>
                                <a href="#">더보기 <i class="fa fa-plus-square-o" aria-hidden="true"></i></a>
                            </div>
                            <ul class="book_list_top">
                                <li class="book_box">
                                    <a href="#"><div><img src="../images/sub_book_100.jpg" alt="신규도서1"></div></a>
                                    <h3><a href="#">생각의 지문</a></h3>
                                    <h4><span>10%</span> 16,200원 <b>(900P)</b></h4>
                                </li>
                                <li class="book_box">
                                    <a href="#"><div><img src="../images/sub_book_200.jpg" alt="신규도서2"></div></a>
                                    <h3><a href="#">책 읽고 매출의 신이 되다</a></h3>
                                    <h4><span>10%</span> 16,020원 <b>(890P)</b></h4>
                                </li>
                                <li class="book_box">
                                    <a href="#"><div><img src="../images/sub_book_300.jpg" alt="신규도서3"></div></a>
                                    <h3><a href="#">그대는 나의 여름이 되세요</a></h3>
                                    <h4><span>10%</span> 15,300원 <b>(850P)</b></h4>
                                </li>
                                <li class="book_box">
                                    <a href="#"><div><img src="../images/sub_book_400.jpg" alt="신규도서4"></div></a>
                                    <h3><a href="#">내가 한 말을 내가 오해하지 않기로 함</a></h3>
                                    <h4><span>10%</span> 17,820원 <b>(990P)</b></h4>
                                </li>
                                <li class="book_box">
                                    <a href="#"><div><img src="../images/sub_book_500.jpg" alt="신규도서5"></div></a>
                                    <h3><a href="#">목소리들</a></h3>
                                    <h4><span>10%</span> 14,400원 <b>(800P)</b></h4>
                                </li>    
                            </ul>
                            <ul class="book_list_bottom">
                                <li class="book_box">
                                    <a href="#"><div><img src="../images/sub_book_600.jpg" alt="신규도서6"></div></a>
                                    <h3><a href="#">누구보다 행복하고 싶은 너에게</a></h3>
                                    <h4><span>10%</span> 15,120원 <b>(840P)</b></h4>
                                </li>
                                <li class="book_box">
                                    <a href="#"><div><img src="../images/sub_book_700.jpg" alt="신규도서7"></div></a>
                                    <h3><a href="#">공원주의자</a></h3>
                                    <h4><span>10%</span> 10,800원 <b>(600P)</b></h4>
                                </li>
                                <li class="book_box">
                                    <a href="#"><div><img src="../images/sub_book_800.jpg" alt="신규도서8"></div></a>
                                    <h3><a href="#">그래서 우리는 음악을 듣는다</a></h3>
                                    <h4><span>10%</span> 18,000원 <b>(1,000P)</b></h4>
                                </li>
                                <li class="book_box">
                                    <a href="#"><div><img src="../images/sub_book_900.jpg" alt="신규도서9"></div></a>
                                    <h3><a href="#">신세기 사랑 이야기</a></h3>
                                    <h4><span>10%</span> 19,800원 <b>(1,100P)</b></h4>
                                </li>
                                <li class="book_box">
                                    <a href="#"><div><img src="../images/sub_book_1000.jpg" alt="신규도서10"></div></a>
                                    <h3><a href="#">살의의 형태</a></h3>
                                    <h4><span>10%</span> 15,210원 <b>(840P)</b></h4>
                                </li>
                            </ul>
                        </div>
                       </div>
                       <!-- /Container -->
                    </div>

                </div>
                <!-- /Content Box -->
            </section>
        </main>
        <!-- /Main -->

        <!-- Footer -->
        <footer>
        	<jsp:include page="../includes/footer.jsp"/>
        </footer>
        <!-- /Footer -->

    </div>


<!-- script -->
<!-- *** header | footer *** -->
<script src="../js/common.js"></script>
<!-- /script -->
<script src="../js/sub.js"></script>
<script>
//     $('header').load('./header.html',function(){
//         $('.hamburger > label').on('click',function(){
//             var scroll_loc = $(window).scrollTop();
//             if(scroll_loc>=show_loc){ //현재 윈도우의 스크롤이 256보다 내려갔을 때
//                 if($('#menuIcon').prop('checked')){
//                     $('.personal_item').removeClass('on');
//                 }else{
//                     $('.personal_item').addClass('on');
//                 }
                
//             }
//             console.log('click');
//         });
//     });
//     $('footer').load('./footer.html', function(){
//         $('a[href="#"]').click(removeHref);
//         // EVT
//         function removeHref(e){
//             e.preventDefault();
//         };
//         $('body').append('<div class="alert yes24"><img src="../images/alert1.png" alt="준비중 이미지"></div>')

//         $('a[href="#"]').click(function(e){
//         e.preventDefault();
//         // 효과 메서드 나오도록 코딩
//         $('.alert').stop().fadeIn(500);
//         // 3초후에 자동으로 사라지도록 코딩
//         setTimeout(function(){
//             $('.alert').stop().fadeOut(500);
//         },2000);

//         });
//     });
</script>
<script src="../js/scroll_header.js"></script>

</body>
</html>