<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>YES24</title>
    <!-- 폰트어썸 cdn -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- pc용 파비콘 -->
    <link rel="shortcut icon" href="./images/favicon/favicon_yes.ico"> 
    <!-- 디바이스용 파비콘 -->
    <link rel="apple-touch-icon=precomposed" href="./images/favicon/favicon_yes.ico">
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.2.0/css/all.min.css" integrity="sha512-6c4nX2tn5KbzeBJo9Ywpa0Gkt+mzCzJBrE1RB6fmpcsoN+b/w/euwIMuQKNyUoU/nToKN3a8SgNOtPrbW12fug==" crossorigin="anonymous" /> -->
    <link rel="stylesheet" href="./css/reset.css">
    <!-- 페이지 관련 CSS -->
    <link rel="stylesheet" href="./css/main.css">
    <!-- JS 플러그인 파일 -->
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/jquery.scrollTo.min.js"></script>
    <!-- prefix js파일 -->
    <script src="./js/prefixfree.min.js"></script>
    <!-- Swiper JS,CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

    <!-- 페이지관련 : js -->
    <script src="./js/object.js"></script>
    <script src="./js/main.js"></script>
    
    <!-- 페이지관련 플러그인 : bxslider JS, CSS -->
    <script src="./js/jquery.bxslider.js"></script>
    <link rel="stylesheet" href="./css/jquery.bxslider.css">
    

</head>
<body>
    <!-- 탑버튼/광고 -->
    <div class="circle_btn">
        <div class="circle_ad">
            <div class="ad_btn"><a href="#"><img src="./images/icon_ad_1.png" alt="Ad Image"></a></div>
        </div>
        <div class="circle_top">
            <div class="top_btn"><a href="#wrap"><img src="./images/icon_stepOut_48.png" alt="Top Button"></a></div>
        </div>
    </div>
    <!-- /탑버튼/광고 -->
    
    <div id="wrap">
        <!-- header -->
        <header class="header w1200">
        	<jsp:include page="./includes/header.jsp"/>
        </header>
        <!-- /header -->
        <!-- slilder영역 -->
        <article class="main_slider">
            <ul class="gallery_wrap">
                <li><a href="#"><img src="./images/main_slider_1.png" width="1920" alt="슬라이드이미지"></a></li>                
                <li><a href="#"><img src="./images/main_slider_2.png" width="1920" alt="슬라이드이미지"></a></li>                
                <li><a href="#"><img src="./images/main_slider_3.png" width="1920" alt="슬라이드이미지"></a></li>                
                <li><a href="#"><img src="./images/main_slider_4.png" width="1920" alt="슬라이드이미지"></a></li>                
                <li><a href="#"><img src="./images/main_slider_5.png" width="1920" alt="슬라이드이미지"></a></li>                
                <li><a href="#"><img src="./images/main_slider_6.png" width="1920" alt="슬라이드이미지"></a></li>                
                <li><a href="#"><img src="./images/main_slider_7.png" width="1920" alt="슬라이드이미지"></a></li>                
            </ul>
        </article>
    <!-- /slilder영역 -->
    <!-- /slilder영역 -->
    
    <!-- Contents -->
    <!-- 실시간순위창 - 베스트셀러/스테디셀러 -->
    <section class="seller_wrap w1200">
        <div class="seller_box">
            <div class="seller_tab" id="sellerTab">
                <div class="tab_item">베스트셀러</div>
            </div>
            <div class="seller_con" id="sellerCon">
                <div class="seller_rank">
                    <ul class="seller_rank_list" id="sellerList">
                        <li class="rank_item on"><span class="rank_num">01</span> <span>마흔에 읽는 쇼펜 하우어</span> <span class="rank_var">-</span></li>
                        <li class="rank_item "><span class="rank_num">02</span> <span>감정 경제학</span> <span class="rank_var">-</span></li>
                        <li class="rank_item"><span class="rank_num">03</span> <span>남에게 보여주려고 인생을 낭비하지 마라</span> <span class="rank_var up"><i class="fa fa-caret-up" aria-hidden="true"></i>1</span></li>
                        <li class="rank_item"><span class="rank_num">04</span> <span>나는 배당투자로 매일 스타벅스 커피를...</span> <span class="rank_var down"><i class="fa fa-caret-down" aria-hidden="true"></i>1</span></li>
                        <li class="rank_item"><span class="rank_num">05</span> <span>황금종이1</span> <span class="rank_var up"><i class="fa fa-caret-up" aria-hidden="true"></i>2</span></li>
                    </ul>
                </div>
                
                <div class="seller_book">
                    <div class="seller_book_img">
                        <a href="#"><img src="./images/main_best_seller_1.png" alt="베스트셀러 책표지 이미지" id="rankImg"></a>
                    </div>
                    <div class="seller_book_txt" id="rankTxt">
                        <h4 class="book_title"><a href="#">마흔에 읽는 쇼펜 하우어</a></h4>
                        <p class="book_author">강용수 저자(글)</p>
                        <p class="book_price"><span>10%</span><b>15,300</b>원</p>
                        <p class="book_ex">
                            2023년 8월 유노북스에 서 펴낸 &laquo;마흔에 읽는 쇼펜 하우어&raquo;가 전 서점 베스트셀러 종합 1위에 올랐다.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>   
    <!-- /실시간순위창 -->
    <!-- 메인 콘텐츠 -->
    <section id="main_sec">
        <!-- Content Box -->

        <!-- 신규도서 탭 -->
        <div class="con_wrap w1200 swiper_wrap" id="newBookWrap">
            <div class="title_wrap">
                <div class="title_in">
                    <h2 class="title">신간도서</h2>
                    <ul class="tab_list" id="newBookListTab">
                        <li class="on">국내도서</li>
                        <li>외국도서</li>
                        <li class="no_mr">eBook</li>
                    </ul>
                </div>
                <p class="view_more"><a href="#">더보기 <i class="fa fa-plus-square-o" aria-hidden="true"></i></a></p>
            </div>
            <div class="contents swiperBox" id="newBookSwiper">
                <div class="swiperBoxIn">
                    <ul class="swiper-wrapper" id="newBookList">
                        <li class="swiper-slide">
                            <div>
                                <h3><a href="#"><img src="./images/main_book_new_korea_1.jpg" alt="신세기 사랑 이야기"></a></h3>
                                <p><a href="#">신세기 사랑 이야기</a></p>
                                <p>찬쉐 · 글항아리</p>
                            </div>
                        </li>
                        <li class="swiper-slide">
                            <div>
                                <h3><a href="#"><img src="./images/main_book_new_korea_2.jpg" alt="살의의 형태"></a></h3>
                                <p><a href="#">살의의 형태</a></p>
                                <p>홍정기 · 서랍의날씨</p>
                            </div>
                        </li>
                        <li class="swiper-slide">
                            <div>
                                <h3><a href="#"><img src="./images/main_book_new_korea_3.jpg" alt="사무실의 도른자들"></a></h3>
                                <p><a href="#">사무실의 도른자들</a></p>
                                <p>테사 웨스트 · 문학동네</p>
                            </div>
                        </li>
                        <li class="swiper-slide">
                            <div>
                                <h3><a href="#"><img src="./images/main_book_new_korea_4.jpg" alt="효과 빠른 번아웃 처방전"></a></h3>
                                <p><a href="#">효과 빠른 번아웃 처방전</a></p>
                                <p>홋타 슈고 · 동양북스</p>
                            </div>
                        </li>
                        <li class="swiper-slide">
                            <div>
                                <h3><a href="#"><img src="./images/main_book_new_korea_5.jpg" alt="효과 빠른 번아웃 처방전"></a></h3>
                                <p><a href="#">관계의 언어</a></p>
                                <p>문요한 · 더퀘스트</p>
                            </div>
                        </li>
                    </ul> 
                </div>     
            </div>
            <!-- 스와이퍼-이동버튼 -->
            <div class="swiper-button-next newBook-next"><img src="./images/icon_arrowForward_48.png" alt="슬라이드 다음버튼"></div>
            <div class="swiper-button-prev newBook-prev"><img src="./images/icon_arrowBack_48.png" alt="슬라이드 이전버튼"></div>
            <!-- /스와이퍼-이동버튼 -->
            <!-- /국내도서 -->
        </div>
        <!-- /신규도서 탭 -->

        <!-- 베스트음반 -->
        <div class="con_wrap w1200 swiper_wrap" id="bestMusicWrap">
            <div class="title_wrap">
                <div class="title_in">
                    <h2 class="title">베스트 음반</h2>
                    <ul class="tab_list" id="bestMusicListTab">
                        <li class="on">가요</li>
                        <li>팝</li>
                        <li>재즈</li>
                        <li>락</li>
                        <li class="no_mr">클래식</li>
                    </ul>
                </div>
                <p class="view_more"><a href="#">더보기 <i class="fa fa-plus-square-o" aria-hidden="true"></i></a></p>
            </div>
            <div class="contents swiperBox" id="bestMusicSwiper">
                <div class="swiperBoxIn">
                    <ul class="swiper-wrapper" id="bestMusicList">
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_music_best_kpop_1.jpg" alt="MERRY GO ROUND [미니]"></a></h3>
                            <p><a href="#">MERRY GO ROUND [미니]</a></p>
                            <p>볼빨간 사춘기 · 가요</p>
                        </li>
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_music_best_kpop_2.jpg" alt="2024 SEASONS GREETINGS"></a></h3>
                            <p><a href="#">2024 SEASONS GREETINGS</a></p>
                            <p>IVE(아이브) · 가요</p>
                        </li>
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_music_best_kpop_3.jpg" alt="2024 SEASONS GREETINGS"></a></h3>
                            <p><a href="#">2024 SEASONS GREETINGS</a></p>
                            <p>EXO(엑소) · 가요</p>
                        </li>
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_music_best_kpop_4.jpg" alt="2024 SEASONS GREETINGS"></a></h3>
                            <p><a href="#">2024 SEASONS GREETINGS</a></p>
                            <p>NEWJEANS(뉴진스) · 가요</p>
                        </li>
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_music_best_kpop_5.jpg" alt="MERRY GO ROUND [미니]"></a></h3>
                            <p><a href="#">2024 SEASONS GREETINGS</a></p>
                            <p>SHINEE(샤이니) · 가요</p>
                        </li>
                    </ul>       
                </div>
            </div>
            <!-- 스와이퍼-이동버튼 -->
            <div class="swiper-button-next bestMusic-next"><img src="./images/icon_arrowForward_48.png" alt="슬라이드 다음버튼"></div>
            <div class="swiper-button-prev bestMusic-prev"><img src="./images/icon_arrowBack_48.png" alt="슬라이드 이전버튼"></div>
            <!-- /스와이퍼-이동버튼 -->
            
        </div>
        <!-- /베스트음반 -->

        <!-- 신규음반 탭 -->
        <div class="con_wrap w1200 swiper_wrap" id="newMusicWrap">
            <div class="title_wrap">
                <div class="title_in">
                    <h2 class="title">신규음반</h2>
                    <ul class="tab_list" id="newMusicListTab">
                        <li class="on">가요</li>
                        <li>팝</li>
                        <li>재즈</li>
                        <li>락</li>
                        <li class="no_mr">클래식</li>
                    </ul>
                </div>
                <p class="view_more"><a href="#">더보기 <i class="fa fa-plus-square-o" aria-hidden="true"></i></a></p>
            </div>
            
            <div class="contents swiperBox" id="newMusicSwiper">
                <div class="swiperBoxIn">
                    <ul class="swiper-wrapper" id="newMusicList">
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_music_new_kpop_1.jpeg" alt="MERRY GO ROUND"></a></h3>
                            <p><a href="#">MERRY GO ROUND [미니]</a></p>
                            <p>볼빨간사춘기 · 가요</p>
                        </li>
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_music_new_kpop_2.jpg" alt="하루종일"></a></h3>
                            <p><a href="#">하루종일</a></p>
                            <p>김석준 · 가요</p>
                        </li>
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_music_new_kpop_3.jpg" alt="I LOVE WINTER [겨울 앨범]"></a></h3>
                            <p><a href="#">I LOVE WINTER [겨울 앨범]</a></p>
                            <p>HWANG CHI YEUL(황치열) · 가요</p>
                        </li>
                        <li class="swiper-slide highlight_slide">
                            <h3><a href="#"><img src="./images/main_music_new_kpop_4.jpg" alt="짙은햇살 [정규 2집]"></a></h3>
                            <p><a href="#">짙은햇살 [정규 2집]</a></p>
                            <p>모스크바서핑클럽 · 가요</p>
                        </li>
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_music_new_kpop_5.jpg" alt="LAST WINTER"></a></h3>
                            <p><a href="#">LAST WINTER</a></p>
                            <p>HEIZE(헤이즈) · 가요</p>
                        </li>
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_music_new_kpop_6.jpg" alt="VOCALANDIST"></a></h3>
                            <p><a href="#">VOCALANDIST</a></p>
                            <p>JUROKEY(주로키) · 가요</p>
                        </li>
                        <!-- <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_music_new_kpop_7.jpeg" alt="VOCALANDIST"></a></h3>
                            <p><a href="#">TIME-LAPSE</a></p>
                            <p>유키카 · 가요</p>
                        </li> -->
                        
                    </ul>
                </div>
            </div>
          
            
            <!-- 스와이퍼-이동버튼 -->
            <div class="swiper-button-next newMusic-next"><img src="./images/icon_arrowForward_48.png" alt="슬라이드 다음버튼"></div>
            <div class="swiper-button-prev newMusic-prev"><img src="./images/icon_arrowBack_48.png" alt="슬라이드 이전버튼"></div>
            <!-- /스와이퍼-이동버튼 -->
        </div>
        <!-- /신규음반 탭 -->

        <!-- 문구/GIFT -->
        <div class="con_wrap w1200 swiper_wrap" id="giftWrap">
            <div class="title_wrap">
                <h2 class="title">문구/GIFT</h2>
                <p class="view_more"><a href="#">더보기 <i class="fa fa-plus-square-o" aria-hidden="true"></i></a></p>
            </div>
            <div class="contents swiperBox" id="giftSwiper">
                <div class="swiperBoxIn">
                    <ul class="swiper-wrapper">
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_goods_1.jpg" alt="(2024 날짜형) 2024 꽃길 여담 다이어리"></a></h3>
                            <p><a href="#">(2024 날짜형) 2024 꽃길<br>여담 다이어리</a></p>
                            <p><span>24%</span>9,730원<del>12,800원</del></p>
                            <div class="coupon">
                                <span>쿠폰</span>
                                <div>무료배송</div>
                            </div>
                        </li>
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_goods_2.jpg" alt="레토 높이조절 투명 독서대 책받침대 LRB-T03"></a></h3>
                            <p><a href="#">레토 높이조절 투명 독서대 <br> 책받침대 LRB-T03</a></p>
                            <p><span>20%</span>31,900원<del>39,900원</del></p>
                            <div class="coupon">
                                <div>무료배송</div>
                            </div>
                        </li>
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_goods_3.png" alt="로이텀 미디엄 BULLET JOURNAL 2"></a></h3>
                            <p><a href="#">로이텀 미디엄 BULLET JOURNAL 2</a></p>
                            <p><span>10%</span>34,200원<del>38,000원</del></p>
                            <div class="coupon">
                                <div>무료배송</div>
                            </div>
                        </li>
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_goods_4.png" alt="[CERAMIC LED] HOLDING TREE"></a></h3>
                            <p><a href="#">[CERAMIC LED] HOLDING TREE</a></p>
                            <p><span>50%</span>3,500<del>7,000</del></p>
                        </li>
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_goods_5.png" alt="(2024 날짜형) 2024 꽃길 여담 다이어리"></a></h3>
                            <p><a href="#">[국내정품]로지텍 인체공학 무선 마우스 버티컬 LIFT</a></p>
                            <p><span>23%</span>69,000<del>89,000원</del></p>
                            <div class="coupon">
                                <div>무료배송</div>
                            </div>
                        </li>
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_goods_6.png" alt="레토 높이조절 투명 독서대 책받침대 LRB-T03"></a></h3>
                            <p><a href="#">바나나빌딩 집순이들을 위한 접이식 베드 테이블</a></p>
                            <p><span>30%</span>13,900원<del>19,900원</del></p>
                            <div class="coupon">
                                <div>무료배송</div>
                            </div>
                        </li>
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_goods_7.jpg" alt="로이텀 미디엄 BULLET JOURNAL 2"></a></h3>
                            <p><a href="#">핑크풋 봉주르2024탁상캘린더</a></p>
                            <p><span>20%</span>3,200원<del>4,000원</del></p>
                        </li>
                        <li class="swiper-slide">
                            <h3><a href="#"><img src="./images/main_goods_8.jpg" alt="[CERAMIC LED] HOLDING TREE"></a></h3>
                            <p><a href="#">[제브라] 마일드 라이너(형광펜)/단품_New컬러추가</a></p>
                            <p><span>31%</span>1,250<del>1,800</del></p>
                        </li>
                    </ul>
                </div>
                
            </div>
            <!-- 스와이퍼-이동버튼 -->
            <div class="swiper-button-next gift-next"><img src="./images/icon_arrowForward_48.png" alt="슬라이드 다음버튼"></div>
            <div class="swiper-button-prev gift-prev"><img src="./images/icon_arrowBack_48.png" alt="슬라이드 이전버튼"></div>
            <!-- /스와이퍼-이동버튼 -->
        </div>
        <!-- /문구/GIFT -->

        <!-- 티켓 -->
        <div class="con_wrap w1200" id="ticketWrap">
            <div class="title_wrap">
                <h2 class="title">티켓</h2>
                <p class="view_more"><a href="#">더보기 <i class="fa fa-plus-square-o" aria-hidden="true"></i></a></p>
            </div>
            <div class="contents">
                <div class="con_main">
                    <h3><a href="#"><img src="./images/main_ticket_1.jpg" alt="뮤지컬 〈은하철도의 밤〉"></a></h3>
                    <p>뮤지컬 〈은하철도의 밤〉</p>
                    <p>2023.12.20 ~ 2024.03.03, 예스24스테이지 1관</p>
                    <p>뮤지컬 > 창작</p>
                </div>
                <ul class="con_list">
                    <li><a href="#"><img src="./images/main_ticket_2.jpg" alt="DAY6 Christmas Special Concert ‘The Present : You are My Day’"></a></li>
                    <li><a href="#"><img src="./images/main_ticket_3.jpg" alt="뮤지컬 〈드라이 플라워〉"></a></li>
                    <li><a href="#"><img src="./images/main_ticket_4.jpg" alt="어른이 뮤지컬 〈난쟁이들〉"></a></li>
                    <li><a href="#"><img src="./images/main_ticket_5.jpg" alt="2023 멜로망스 전국투어 콘서트 〈Roman’ce Town〉 OFFICIAL MERCHANDISE 일반 판매"></a></li>
                    <li><a href="#"><img src="./images/main_ticket_6.jpg" alt="뮤지컬 〈결투〉"></a></li>
                    <li><a href="#"><img src="./images/main_ticket_7.jpg" alt="화가시리즈 - 뮤지컬 〈에곤 실레〉"></a></li>
                </ul>
            </div>
        </div>
        <!-- /티켓 -->
        <!-- /Content Box -->
    </section>

    <!-- /메인 콘텐츠 -->
    <!-- /Contents -->
    </div>

    <!-- Footer -->
    <footer>
        <jsp:include page="./includes/footer.jsp"/>
    </footer>    
    <!-- Footer -->

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
//     $('footer').load('./footer.html',function(){
//         $('body').append('<div class="alert"><img src="./images/alert1.png" alt="준비중 알람창"></div>');

//         $('a[href="#"]').click(function(e){        
//             e.preventDefault();
//             // 효과 메서드 나오도록 코딩
//             $('.alert').stop().fadeIn(800);
//             // 3초후에 자동으로 사라지도록 코딩
//             setTimeout(function(){
//                 $('.alert').stop().fadeOut(800);
//             },3000);
//         });
//     });
</script>
<!-- Header Scroll -->
<script src="./js/scroll_header.js"></script>
<!-- Initialize Swiper -->
<script>
    /* 메인페이지 상단 슬라이더 */
    $('.gallery_wrap').bxSlider({
        auto: 'true',
        mode:'horizontal',
        pager: 'true',
        pause: '5000',
        speed: '1000',
        autoHover:true,
    });

    /* 메인페이지 베스트셀러 랭킹 롤링 */
    listRolling(sellerBookList.best,{
        ele:'.seller_rank_list',
        delay:3000,
        mouseover:true,
        start:true,
    });

    
    /* 메인페이지 각 콘텐츠 탭메뉴 */
    listTapHandler(newBookList,{
        tab : '#newBookListTab',
        list : '#newBookList'
    });
    listTapHandler(bestMusicList,{
        tab : '#bestMusicListTab',
        list : '#bestMusicList'
    });
    listTapHandler(newMusicList,{
        tab : '#newMusicListTab',
        list : '#newMusicList'
    });
    /* 메인페이지 각 콘텐츠 슬라이더 */
    swiperHandler({
        ele : '#newBookSwiper',
        next : '.newBook-next',
        prev : '.newBook-prev',
        delay : 3000,
        slidesPerView : 4,
        spaceBetween : 40
    });
    swiperHandler({
        ele : '#bestMusicSwiper',
        next : '.bestMusic-next',
        prev : '.bestMusic-prev',
        delay : 3000,
        slidesPerView : 4,
        spaceBetween : 40
    });
    swiperHandler({
        ele : '#newMusicSwiper',
        next : '.newMusic-next',
        prev : '.newMusic-prev',
        delay : 30000,
        slidesPerView : 5,
        spaceBetween : 0,
    });
    swiperHandler({
        ele : '#giftSwiper',
        next : '.gift-next',
        prev : '.gift-prev',
        delay : 3000,
        slidesPerView : 4,
        spaceBetween : 40
    });

</script>
</body>
</html>