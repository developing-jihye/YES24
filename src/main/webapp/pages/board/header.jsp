<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
%>
<!-- header -->
<div class="header_in" id="headerIn">
    <div class="header_inner" id="headerInner">
        <!-- 로고,검색창 -->
        <div class="logo">
            <h1><a href="/index.jsp"><img src="./images/logo_1.png" width="148px" height="48px" alt="logo"></a></h1>
            <!-- 검색창 -->
            <div class="search">   
                <div class="search_gnb">    
                    <select name="search_gnb" id="search_1" >
                        <option value="all" selected>통합검색</option>
                        <option value="yes24">YES24</option>
                        <option value="book">BOOK</option>
                        <option value="ticket">TICKET</option>
                        <option value="goods">GOODS</option>
                    </select>                    
                </div>
                <div class="search_box">
                    <input type="text" id="search" name="search" autocomplete="off">
                    <div class="search_detail">
                        <div class="search_recommend">
                            <h3 class="recommend_title">추천 검색어</h3>
                            <ul class="recommend_list">
                                <li><a href="#">베스트셀러</a></li>
                                <li><a href="#">다이어리</a></li>
                                <li><a href="#">달력</a></li>
                            </ul>
                        </div>
                        <div class="search_recent">
                            <h3 class="recent_title">최근 검색어 <button>전체삭제 <i class="fa fa-trash" aria-hidden="true"></i></button></h3>
                            <ul class="recent_list">
                                <li><a href="#">황금종이</a><div>12.14<button><i class="fa fa-times" aria-hidden="true"></i></button></div></li>
                                <li><a href="#">다이어리</a><div>12.14<button><i class="fa fa-times" aria-hidden="true"></i></button></div></li>
                                <li><a href="#">달력</a><div>12.14<button><i class="fa fa-times" aria-hidden="true"></i></button></div></li>
                            </ul>
                        </div>
                    </div> 
                </div>              
                <div class="search_icon">
                    <button><a href="#"><img src="./images/icon_search_36.png" alt="search"></a></button>
                </div>
            </div>
            <!-- /검색창 -->
            <!-- 장바구니 로그인 -->
            <div class="personal_option">
                <div class="personal_box">
                    <div class="personal_item"><a href="/Yes24/pages/board/cart.html"><img src="./images/icon_shoppingCart_48.png" alt="장바구니"></a></div>
                    <% if(id != null){ %>
                    <div class="personal_item" style="box-shadow:0 2px 5px 1px rgba(103,153,255,.9)"><a href="#"><img src="./images/icon_person_48.png" alt="로그인"></a></div>
                    <% }else{ %>
                    <div class="personal_item" ><a href="/pages/auth/login.jsp"><img src="./images/icon_person_48.png" alt="로그인"></a></div>
                    <% } %>
                </div>
            </div>
            <!-- /장바구니 로그인 -->
            
        </div>
        <!-- /로고,검색창 -->

        <!-- 숏컷박스 -->
        <div class="shortcut_box">
            <!-- 햄버거 메뉴그리기 -->
            <div class="ham_box">
                <div class="hamburger">
                    <input type="checkbox" id="menuIcon">
                    <label for="menuIcon">
                        <span></span>
                        <span></span>
                        <span></span>
                    </label>
                    <!-- 햄버거 메뉴 클릭시 나오는 GNB메뉴 -->
                    <nav class="ham_tab">
                        <div class="tab_total">
                            <div class="tab_content">
                                <!-- Tab button -->                            
                                <input type="radio" name="tabmenu" id="tab01" checked>
                                <label for="tab01">카테고리 보기</label>
                                <input type="radio" name="tabmenu" id="tab02">
                                <label for="tab02">전체메뉴 보기</label>                                              
                                <!-- /Tab button -->
                                                
                                <!-- Tab Contents -->                        
                                <div class="menu_box con_1">
                                    <div class="tab_box_m">
                                        <ul class="">
                                            <li class="on">
                                                <a href="#">YES24</a>
                                            </li>                                    
                                            <li>
                                                <a href="#">MUSIC</a>
                                            </li>
                                            <li>
                                                <a href="#">TICKET</a>
                                            </li>
                                            <li>
                                                <a href="#">GOODS</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="tab_con depth_1">
                                        <ul class="cate_list">
                                            <li class="on"><a href="/pages/book_kr.html">국내도서 <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                            <li><a href="#">외국도서 <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                            <li><a href="#">e-BOOK <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                            <li><a href="#">기타도서 <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                        </ul>                               
                                        <div class="cate_detail depth_2">
                                            <h4 class="cate_title">국내도서전체</h4>
                                            <div class="cate_detail_con depth_3">
                                                <ul class="cate_detail_list">
                                                    <li><a href="#">소설</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">시/에세이</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">인문</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">가정/육아</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">요리</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">건강</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">취미/실용/스포츠</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">경제/경영</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">자기계발</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">정치/사회</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">역사/문화</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                </ul>
                                                <ul class="cate_detail_list">
                                                    <li><a href="#">종교</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">예술/대중문화</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">중/고등참고서</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">기술/공학</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">외국어</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">과학</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">취업/수험서</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">여행</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">컴퓨터/IT</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">잡지</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">청소년</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                </ul>
                                                <ul class="cate_detail_list">
                                                    <li><a href="#">초등참고서</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">유아(0~7세)</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">어린이(초등)</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">만화</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">대학교재</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">한국소개도서</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">교보오리지널</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#">스페셜 코너</a><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>        
                                        </div>
                                        <div class="spc_menu">
                                            <h4 class="spc_title">스페셜 코너</h4>
                                            <ul class="spc_list">
                                                <li><a href="#">오늘의선택</a></li>
                                                <li><a href="#">추천</a></li>
                                                <li><a href="#">선물</a></li>
                                                <li><a href="#">분철하기</a></li>
                                                <li><a href="#">특가</a></li>
                                                <li><a href="#">정가인하</a></li>
                                            </ul>
                                        </div>
                                        
                                    </div>
                                </div>
                                <div class="menu_box con_2">
                                    <div class="tab_con depth_1">                                
                                        <div class="menu_all depth_2">
                                            <ul class="menu_all_list">
                                                <li><span><a href="#">주요서비스</a></span></li>
                                                <li><a href="#">종합 베스트셀러</a></li>
                                                <li><a href="#">스테디셀러</a></li>
                                                <li><a href="#">신상품</a></li>
                                                <li><a href="#">사은품</a></li>
                                                <li><a href="#">특가</a></li>
                                                <li><a href="#">정가인하</a></li>
                                                <li><a href="#">인물&작품</a></li>
                                                <li></li>
                                                <li><span><a href="#">선물하기</a></span></li>
                                                <li><a href="#">책 그리고 꽃</a></li>
                                                <li><a href="#">배송라운지</a></li>
                                                <li><a href="#">이벤트 / 혜택 </a></li>                                            
                                                <li><a href="#">이벤트당첨자</a></li>                                            
                                            </ul>
                                            <ul class="menu_all_list">
                                                <li><span><a href="#">추천</a></span></li>
                                                <li><a href="#">이달의 책</a></li>
                                                <li><a href="#">오늘의 선택</a></li>
                                                <li><a href="#">기프트카드</a></li>
                                                <li><a href="#">분철서비스</a></li>                                                                                      
                                                <li><a href="#">디 에센셜</a></li>
                                                <li></li>
                                                <li><span><a href="#">캠페인</a></span></li>
                                                <li><a href="#">Story</a></li>
                                                <li><a href="#">캠페인 소개</a></li>                                            
                                                <li></li>
                                                <li><span><a href="#">문화공간</a></span></li>
                                                <li><a href="#">강연/공연</a></li>
                                                <li><a href="#">여행/체험</a></li>
                                                <li><a href="#">전시</a></li>                                        
                                            </ul>
                                            <ul class="menu_all_list">
                                                <li><span><a href="#">YES24 오리지널</a></span></li>
                                                <li><a href="#">신간</a></li>
                                                <li><a href="#">eBook/sam </a></li>
                                                <li><a href="#">오디오북</a></li>
                                                <li><a href="#">대여</a></li>
                                                <li><a href="#">학술논문</a></li>
                                                <li><a href="#">웹소설</a></li>
                                                <li><a href="#">웹툰</a></li>
                                                <li><a href="#">자유연재</a></li>
                                                <li><a href="#">핫트랙스 </a></li>
                                                <li><a href="#">오늘만특가</a></li>
                                                <li><a href="#">베스트</a></li>
                                                <li><a href="#">쿠폰/혜택</a></li>
                                            </ul>
                                            <ul class="menu_all_list">
                                                <li><span><a href="#">이벤트</a></span></li>
                                                <li><a href="#">라이브</a></li>
                                                <li><a href="#">영상</a></li>
                                                <li><a href="#">포스트</a></li>
                                                <li><a href="#">이용권 구매</a></li>
                                                <li><a href="#">스토리 </a></li>
                                                <li></li>
                                                <li><span><a href="#">회원정보</a></span></li>                                            
                                                <li><a href="#">회원혜택 </a></li>
                                                <li><a href="#">등급별 혜택</a></li>
                                                <li><a href="#">신규회원혜택</a></li>
                                                <li><a href="#">제휴포인트상품권</a></li>
                                            </ul>
                                            <ul class="menu_all_list">                                            
                                                <li><span><a href="#">고객센터 </a></span></li>                                           
                                                <li><a href="#">자주묻는질문</a></li>
                                                <li><a href="#">1:1문의</a></li>
                                                <li><a href="#">공지사항</a></li>                                            
                                                <li><a href="#">알림센터</a></li>
                                                <li><a href="#">매장안내 </a></li>
                                                <li><a href="#">회사소개 </a></li>
                                                <li><a href="#">사업현황</a></li>
                                                <li><a href="#">채용정보</a></li>
                                                <li><a href="#">제휴/제안</a></li>
                                                <li><a href="#">이용약관</a></li>
                                                <li><a href="#">개인정보처리방침</a></li>
                                            </ul>   
                                            <ul class="menu_all_list">
                                                <li><span><a href="#">마이</a></span></li>
                                                <li><a href="#">출석체크</a></li>                                            
                                                <li><a href="#">주문/배송목록</a></li>
                                                <li><a href="#">선물함</a></li>
                                                <li><a href="#">활동내역</a></li>
                                                <li><a href="#">매장 구매 내역</a></li>
                                                <li><a href="#">영수증 조회/후 적립</a></li>
                                            </ul>                                                          
                                        </div>
                                    </div>                
                                </div>                    
                                <!-- /Tab Contents -->
                            </div> 
                        </div>
                    </nav>
                    <!-- /햄버거 메뉴 클릭시 나오는 GNB메뉴 -->
                </div>  
            </div>          
            <!-- /햄버거 메뉴그리기 -->
            <!-- 숏컷area -->
            <div class="shortcut_area">
                <ul class="shortcut_list yes24">
                    <li><a href="#"><div class="shortcut_icon icon_discount"><img src="./images/icon_discount_64.png" alt="할인혜택"></div>할인혜택</a></li>
                    <li><a href="#"><div class="shortcut_icon icon_crema"><img src="./images/icon_crema_64.svg" alt="크레마클럽"></div>크레마클럽</a></li>
                    <li><a href="#"><div class="shortcut_icon icon_best"><img src="./images/icon_best_64.png" alt="베스트"></div>베스트</a></li>
                    <li><a href="#"><div class="shortcut_icon icon_new"><img src="./images/icon_new_64.png" alt="신상품"></div>신상품</a></li>
                    <li><a href="#"><div class="shortcut_icon icon_event"><img src="./images/icon_event_64.png" alt="이벤트"></div>이벤트</a></li>
                    <li><a href="#"><div class="shortcut_icon icon_shop"><img src="./images/icon_shop_64.png" alt="중고샵"></div>중고샵</a></li>
                    <li><a href="#"><div class="shortcut_icon icon_info"><img src="./images/icon_info_64.png" alt="매장안내"></div>매장안내</a></li>
                    <li><a href="#"><div class="shortcut_icon icon_notice"><img src="./images/icon_notice_64.png" alt="공지사항"></div>공지사항</a></li>
                    <li><a href="/pages/board/board.html"><div class="shortcut_icon icon_cs"><img src="./images/icon_cs_64.png" alt="고객센터"></div>고객센터</a></li>
                    <li><a href="#"><div class="shortcut_icon icon_yesonly"><img src="./images/icon_yesonly_64.png" alt="예스단독"></div>예스단독</a></li>
                </ul>
            </div>
            <!--  /숏컷area -->
            <!--  광고 -->
            <div class="ad_box">
                <a href="#"><img src="./images/header_ad_1.png" alt="헤더 광고 이미지"></a>
            </div>
            <!--  /광고 -->
        </div>
        <!-- /숏컷박스 -->
    </div>
    
</div>
 
    <script>
        
    </script>
<!--  /header -->