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
    <title>Yes24-장바구니</title>
    <!-- 폰트어썸 cdn -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- pc용 파비콘 -->
    <link rel="shortcut icon" href="../../images/favicon/favicon_yes.ico"> 
    <!-- 디바이스용 파비콘 -->
    <link rel="apple-touch-icon=precomposed" href="../../images/favicon/favicon_yes.ico">
    <!-- prefix js파일 -->
    <script src="../../js/prefixfree.min.js"></script>
    <!-- 리셋 -->
    <link rel="stylesheet" href="../../css/reset.css">
    <!-- 페이지 CSS -->
    <link rel="stylesheet" href="../../css/cart.css">
    <!-- JS 플러그인 파일 -->
    <script src="../../js/jquery-1.12.4.min.js"></script>
    <script src="../../js/jquery-3.3.1.min.js"></script>
    <script src="../../js/jquery.scrollTo.min.js"></script>

    
    
</head>
<body>
    <!-- 탑버튼/광고 -->
    <div class="circle_btn">
        <div class="circle_ad">
            <div class="ad_btn"><a href="#"><img src="../../images/icon_ad_1.png" alt="Ad Image"></a></div>
        </div>
        <div class="circle_top">
            <div class="top_btn"><a href="#wrap"><img src="../../images/icon_stepOut_48.png" alt="Top Button"></a></div>
        </div>
    </div>
    <!-- /탑버튼/광고 -->
    <div id="wrap">
        <!-- Header -->
        <header class="header w1200">
        	<jsp:include page="../../includes/header.jsp"></jsp:include>
        </header>
        <!-- Header -->
        <!-- Main -->
        <main>
            <section>
                <!-- Content Box -->
                <div class="w1200">
                    <!-- 상단바 -->
                    <div class="top_navi">
                        <!-- 주문종류 -->
                            <div class="order_title">
                                <button type="button" class="order_sort_btn active">
                                    <a href="#"><p>모두보기</p></a>
                                </button>
                                <button type="button" class="order_sort_btn">
                                    <a href="#"><p>아침배송</p></a>
                                </button>
                            </div>
                            <!-- /주문종류 -->
                            <!-- 주문순서 -->
                            <div class="order_step">
                                <ul>
                                    <li class="active">
                                        <ul>
                                            <li class="step_num">1</li>
                                            <li class="step_title"><a href="#">장바구니</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <ul>
                                            <li class="step_num">2</li>
                                            <li class="step_title"><a href="#">사은품선택</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <ul>
                                            <li class="step_num">3</li>
                                            <li class="step_title"><a href="#">주문/결제</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <ul>
                                            <li class="step_num">4</li>
                                            <li class="step_title"><a href="#">주문완료</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <!-- /주문순서 -->
                        </div>
                        <!-- /상단바 -->
                    <!-- 장바구니 메인 -->
                    <div class="cart_main">
                        <div class="cart_left w890">      
                            <!-- 선택바 -->
                            <div class="item_list">
                                <!-- 전체선택 -->
                                <div class="item_list_left">
                                    <input type="checkbox" id="select_all">
                                    <label for="select_all">전체</label>
                                </div>
                                <!-- /전체선택 -->
                                <!-- 아이템버튼 -->
                                <div class="item_list_right">
                                    <button class="like_btn"><a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a></button>
                                    <button class="trash_btn"><a href="#"><i class="fa fa-trash-o" aria-hidden="true"></i></a></button>
                                    <button class="excel_btn"><a href="#">Excel 다운로드</a></button>
                                    <button class="unavailable_btn"><a href="#">품/절판 전체삭제</a></button>
                                </div>
                                <!-- /아이템버튼 -->
                            </div>
                            <!-- /선택바 -->
        
                            <!-- 제품목록 -->
                            <div class="prod_list">
                                <!-- 제품목록박스 -->
                                <div class="empty_list">
                                    <p class="empty_list_icon"><i class="fa fa-exclamation-circle" aria-hidden="true"></i></p>
                                    <p class="empty_list_msg">장바구니에 담긴 상품이 없어요.</p>
                                    <p class="empty_list_btn"><a href="<%=home %>/pages/auth/login.jsp">로그인</a></p>
                                </div>
                                <!-- /제품목록박스 -->
                            </div>
                            <!-- /제품목록 -->
        
                            <!-- 결제혜택 -->
                            <div class="payment_benefit">
                                <div class="payment_box">
                                        <div class="kakao_benefit">
                                            <ul>
                                                <a href="#">
                                                    <li class="brand">카카오페이</li>
                                                    <li class="desc">5만원 이상 3천원 즉시할인</li>
                                                </a>
                                            </ul>
                                            <a href="#"><img src="../../images/cart_paymentLogo_1.svg" alt="카카오페이" class="brand_logo"></a>
                                        </div>
                                    <div class="pop_benefit">
                                        <ul>
                                            <a href="#">
                                                <li class="brand">모바일팝</li>
                                                <li class="desc">1만원 이상 7% 즉시할인</li>
                                            </a>
                                        </ul>
                                        <a href="#"><img src="../../images/cart_paymentLogo_2.png" alt="모바일팝" class="brand_logo"></a>
                                    </div>
                                    <div class="naver_benefit">
                                        <ul>
                                            <a href="#">
                                                <li class="brand">네이버페이</li>
                                                <li class="desc">4만원 이상 포인트적립(추첨)</li>
                                            </a>
                                        </ul>
                                        <a href="#"><img src="../../images/cart_paymentLogo_3.png" alt="네이버페이" class="brand_logo"></a>
                                    </div>
                                </div>
                            </div>
                            <!-- /결제혜택 -->
        
                            <!-- 유의사항 -->
                            <div class="warn_box">
                                <h2>장바구니 유의사항</h2>
                                <ul class="warn_msg">
                                    <li>&bull;&nbsp;택배 배송일정은 기본배송지 기준으로 예상일이 노출됩니다.</li>
                                    <li>&bull;&nbsp;상품별 배송일정이 서로 다를시 가장 늦은 일정의 상품 기준으로 모두 함께 배송됩니다.</li>
                                    <li>&bull;&nbsp;배송지 수정시 예상일이 변경 될 수 있으며, 주문서에서 배송일정을 꼭 확인하시기 바랍니다.</li>
                                    <li>&bull;&nbsp;바로드림의 수령가능일은 나의 기본매장 기준으로 노출됩니다.</li>
                                    <li>&bull;&nbsp;쿠폰, 통합포인트, 교환권 사용시 적립예정포인트가 변동 될 수 있습니다.</li>
                                </ul>
                                
                            </div>
                            <!-- /유의사항 -->
                        </div>
                        <div class="cart_right w274">
                            <!-- 제품주문박스 -->
                            <div class="order_list">
                                <div class="payment_info">
                                    <ul>
                                        <li class="label">상품금액</li>
                                        <li class="price"><span>0</span> 원</li>
                                    </ul>
                                    <ul>
                                        <li class="label">배송비&nbsp;<i class="fa fa-question-circle" aria-hidden="true"></i>
                                        </li>
                                        <li class="price">0 원</li>
                                    </ul>
                                </div>
                                <div class="line"></div>
                                <div class="payment_final">
                                    <ul>
                                        <li class="total_label">결제 예정 액</li>
                                        <li class="total_price"><span>0</span> 원</li>
                                    </ul>
                                    <ul>
                                        <li class="point_label">적립예정 포인트&nbsp;<i class="fa fa-question-circle" aria-hidden="true"></i>
                                        </li>
                                        <li class="point">0 P</li>
                                    </ul>
                                    <button class="order_btn" ><a href="#">주문하기 (0)</a></button>
                                </div>
    
                            </div>
                            <!-- /제품주문박스 -->
                        </div>
                    </div>
                    <!-- /장바구니 메인 -->
                </div>
                <!-- /Content Box -->

            </section>
        </main>
        <!-- /Main -->
        <!-- Footer -->
        <footer>
        	<jsp:include page="../../includes/footer.jsp"></jsp:include>
        </footer>
        <!-- /Footer -->
    </div>
   

<!-- *** header | footer *** -->
<script src="../../js/common.js"></script>
<!-- Header Scroll -->
<script src="../../js/scroll_header.js"></script>

</body>
</html>