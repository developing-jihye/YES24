<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yes24-faq게시판</title>
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
    <link rel="stylesheet" href="../../css/board.css">
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
                <div class="faq_wrap w1200">
                    <!-- SNB 영역 -->
                    <aside class="w220">
                        <h2>고객센터</h2>
                        <ul class="snb_list">
                            <li>
                                <a href="#">메인</a>
                            </li>
                            <li>
                                <a style="color: #0080ff; text-decoration: underline;" href="#">자주 묻는 질문</a>
                                <ul class="snb_sub_list">
                                    <li><a href="#">BEST 10</a></li>
                                    <li><a href="#">회원</a></li>
                                    <li><a href="#">도서/상품정보/교과서</a></li>
                                    <li><a href="#">주문/결제</a></li>
                                    <li><a href="#">배송/수령일 안내</a></li>
                                    <li><a href="#">반품/교환/환불</a></li>
                                    <li><a href="#">세금계산서/증빙</a></li>
                                    <li><a href="#">서비스</a></li>
                                    <li><a href="#">eBook</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">1:1 문의</a>
                                <ul class="snb_sub_list">
                                    <li><a href="./boardWrite.jsp">1:1 문의 접수</a></li>                                                          
                                    <li><a href="#">1:1 문의 내역</a></li>
                                </ul>
                                
                            </li>
                            <li>
                                <a href="#">공지사항</a>
                            </li>
                            <li>
                                <a href="#">세금계산서 신청/내역</a>
                            </li>
                            <li>
                                <a href="#">법인회원 대량주문 안내</a>
                            </li>
                        </ul>
                        <div class="snb_service">
                            <h3><i class="fa fa-headphones" aria-hidden="true"></i>&nbsp;고객센터 이용안내</h3>
                            <p>
                                <span>1544-1900</span> (유료)
                            </p>
                            <p>
                                평일 09:00~18:00<br>
                                (주말 및 공휴일 휴무)
                            </p>
                        </div>
                        <div class="snb_service">
                            <h3>보이는 ARS</h3>
                            <p>
                                앱스토어에서 ‘보이는 ARS’<br>
                                앱 설치 후 이용
                            </p>
                            <div class="service_btn">
                                <a href="#">전화상담서비스 안내도&nbsp;<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </aside>

                    <!-- FAQ contents 영역 -->
                    <div class="w980">
                        <h2>자주 묻는 질문</h2>
                        <h3>질문 검색</h3>
                        <div class="search">
                            <input type="search" name="#" id="search_box" placeholder="질문을 검색해 보세요.">
                            <button>검색</button>
                        </div>
                        <ul class="snb_sub_list">
                            <li class="active"><a href="#">BEST 10</a></li>
                            <li><a href="#">회원</a></li>
                            <li><a href="#">도서/상품정보/교과서</a></li>
                            <li><a href="#">주문/결제</a></li>
                            <li><a href="#">배송/수령일 안내</a></li>
                            <li><a href="#">반품/교환/환불</a></li>
                            <li><a href="#">세금계산서/증빙</a></li>
                            <li><a href="#">서비스</a></li>
                            <li><a href="#">eBook</a></li>
                        </ul>
                        <h3>BEST 10</h3>
                        <div class="best_10_wrap">
                            <article>
                                <div class="que">
                                    <h2>
                                        <span><i class="fa fa-search" aria-hidden="true"></i></span>
                                        &nbsp;검색이 되지 않거나 품절/절판인 도서는 구입할 수 없나요?
                                    </h2>
                                    <button class="toggle_btn"><i class="fa fa-angle-down" aria-hidden="true"></i></button>
                                </div>
                                <div class="ans">
                                    검색이 되지 않는 도서는 품절/절판일 경우가 대부분이므로 검색 옵션 중 [품절/절판상품 포함] 란에 체크하신 후 한번 더 검색해보시기 바랍니다.<br>
                                    품절이나 절판으로 표시된 도서는 출판사에서도 더 이상 발간하지 않고 재고가 없는 경우가 대부분이라 구하기 어려운 도서입니다.<br>
                                    이 경우 회원님께서 요청하셔도 구입시기를 확실하게 약속드릴 수 없습니다.<br>
                                    이러한 도서의 구입가능 여부를 확인하시려면 고객센터의 1:1 문의 접수 이용하여 주시면, 최대한 확인하여 답변드리겠습니다.
                                </div>
                            </article>
                            <article>
                                <div class="que">
                                    <h2>
                                        <span><i class="fa fa-search" aria-hidden="true"></i></span>
                                        &nbsp;해외주문도서를 주문하면 얼마 후에 받아볼 수 있나요?
                                    </h2>
                                    <button class="toggle_btn"><i class="fa fa-angle-down" aria-hidden="true"></i></button>
                                </div>
                                <div class="ans">
                                    1. 인터넷 주문가능 상태 주문접수 된 도서는 결제가 완료되는 즉시 해외거래처(B&T)로 자동발주 처리되어, 도서 입고까지 업무일 기준 약 1-2주 정도 소요됩니다.<br><br>

 

                                    2. Special order 는 4~6주 안에 공급가능하며, 현지 출판사 사정에 의해 구입이 어려울 경우 2~3주 안에 공지해 드립니다.<br><br>
                                    
                                     
                                    
                                    ※ 주말 또는 휴일에 주문하신 주문건들은 1-2일 정도 해외발주가 지연되오니 양지해 주시기 바랍니다.<br>
                                    
                                    또한 미국 내 현지 사정에 의해 도서 입고일이 지연될 수 있습니다 ex) 크리스마스, 추수감사절, 연휴 등
                                </div>
                            </article>
                            <article>
                                <div class="que">
                                    <h2>
                                        <span><i class="fa fa-search" aria-hidden="true"></i></span>
                                        &nbsp;주문을 수정(취소/변경)할 수 있나요?
                                    </h2>
                                    <button class="toggle_btn"><i class="fa fa-angle-down" aria-hidden="true"></i></button>
                                </div>
                                <div class="ans">
                                    회원님께서 주문하신 상품은 아래의 단계별로 처리됩니다.<br>

                                    주문수정(취소/변경)는 주문/배송조회에서 회원 로그인 후 하실 수 있습니다. <br>
                                    
                                    비회원 주문의 경우는 주문하실 때 입력했던 이메일 주소와 비밀번호로 로그인하실 수 있습니다.<br><br>
                                    
                                     
                                    
                                    
                                    
                                    ※ 업체배송상품(음반/DVD/gift/어린이전집)은 주문 진행 상태가 [주문접수]일 경우에만 주문 수정 가능합니다. <br>
                                    
                                    - 처리1,2,3단계는 주문을 접수하여 대금 결제를 진행하는 단계로 주문취소가 가능합니다. <br>
                                    
                                    온라인 입금이 완료된 건은 고객님의 환불계좌를 확인하기까지 일시적으로 취소하신 금액을 예치금으로 전환해 드립니다. <br>
                                    
                                    (3단계 상품 준비 중에서는 도서 준비 상태에 따라 주문취소가 불가할 수도 있습니다. 취소를 원하실 경우 고객센터로 연락하셔서 요청 바랍니다.)<br><br>
                                    
                                     
                                    
                                    - 처리 4단계는 회원님께서 주문하신 도서가 물류센터에서 물품 출고 작업 중으로 주문취소가 불가합니다.<br>
                                    - 처리 5단계는 주문 도서를 포장하여 택배사로 물품을 인계되는 단계로 주문취소가 불가합니다. <br><br>
                                    
                                     
                                    
                                    차후 도서를 배송받으신 후 마이룸 > 주문/결제 페이지에서 반품 신청 해 주시기 바랍니다. (또는 청약철회서를 작성하시어 아래 주소로 반송해 주십시오.) <br><br>
                                    
                                    
                                    
                                    [반송 주소] (우편번호:10881) 경기도 파주시 문발로 249, 교보문고 A동 2층 인터넷반품담당자 앞<br>
                                    
                                    매장에서 구매하신 고객님께서는 해당 매장으로 영수증(회원일 경우 안내데스크에서 재발급 가능)을 지참하여 방문해주시면 됩니다.
                                </div>
                            </article>
                            <article>
                                <div class="que">
                                    <h2>
                                        <span><i class="fa fa-search" aria-hidden="true"></i></span>
                                        &nbsp;주문하면 얼마 만에 받아볼 수 있나요?
                                    </h2>
                                    <button class="toggle_btn"><i class="fa fa-angle-down" aria-hidden="true"></i></button>
                                </div>
                                <div class="ans">
                                    고객님께서 주문하신 상품을 실제 받으시는 날은 "예상출고일 + 배송일"입니다.<br>

                                    '예상출고일'이란 근무일 기준으로 도서가 준비되는 시간 만을 안내하는 것이며, 배송시간은 예상출고일 외 택배를 통해 고객님께 실제 배달되는 기간을 말합니다.<br>
                                    
                                    '출고예정일'은 상품에 따라 준비기간이 다르며 배송 시간은 지역에 따라 약간씩 다르나 보통 1~3일정도 소요됩니다. (도서산간지역은 최대 7일 소요)<br><br>
                                    
                                     
                                    
                                    * 예상출고일은 영업일 기준으로 산정되며, 일요일과 공휴일 및 기타 휴무일에는 배송되지 않습니다. (우체국 배송은 토요일 휴무로 배송 불가함)<br>
                                    
                                    * 주문한 상품의 당사에 재고가 없을 때는 거래처로 다시 주문 요청한 후 출고되므로 3∼7일내외 정도 더 소요됩니다.<br>
                                    
                                    * 주문 완료 후 주소를 변경할 경우 배송 스케쥴이 변경될 수 있습니다.<br>
                                    
                                    * 천재지변 등의 불가항력적 사유로 인한 배송 지연은 그 해당기간 동안의 배송소요 기간에서 제외됩니다.<br>
                                    
                                    * 더 빠른 배송을 위해 주문하신 시간과 배송지역에 따라 새벽배송 또는 일요배송이 적용될 수 있습니다.<br>
                                    
                                     ▷ 새벽배송: 평일 12시 ~ 22시 이내에 완료된 주문건에 대해 익일 07시 이전까지 배송 <br>
                                    
                                     ▷ 일요배송: 토요일 오전 11시 ~ 21시 이내에 완료된 주문건에 대해 다음 일요일에 배송<br>
                                    
                                     (새벽배송과 일요배송은 택배사의 사정에 따라 서비스 가능 지역이 변경될 수 있습니다.)
                                </div>
                            </article>
                            <article>
                                <div class="que">
                                    <h2>
                                        <span><i class="fa fa-search" aria-hidden="true"></i></span>
                                        &nbsp;주문상품이 언제 출고되는지 알 수 있나요?
                                    </h2>
                                    <button class="toggle_btn"><i class="fa fa-angle-down" aria-hidden="true"></i></button>
                                </div>
                                <div class="ans">
                                    각 상품별 재고량을 기준으로 상세 상품정보에 예상출고일이 표시됩니다. <br>

                                    출고예정일이란, 주문상품의 결제(무통장입금의 경우 입금확인)가 확인된 날 기준으로 상품을 준비하여 상품 포장 후 교보문고 물류센터에서 택배사로 전달하게 되는 예상 일자 입니다.<br>
                                    
                                    배송일정은 예상출고일에 택배사의 배송일(약 2일)이 더해진 날이며 연휴 및 토.일,공휴일을 제외한 근무일 기준입니다. <br>
                                    
                                    다양한 상품을 함께 주문하실 경우 가장 늦은 출고일정에 맞춰 함께 배송됩니다.<br>

                                    *수도권 외 지역 바로배송 서비스의 경우 경품수령 선택 여부에 따라 배송일정이 변경됩니다. <br>

                                    *출고예정일이 5일 이상인 상품의 경우, 출판사/유통사 사정으로 품/절판 되어 구입이 어려울 수 있습니다. 이 경우 SMS,메일로 알려드립니다. 고객님께서 급하게 필요하신 상품은 별도로 주문하면 받으시는 시간이 절약 됩니다. <br>

                                    *온라인 입금의 경우 입금 확인이 완료된 시점부터 적용되므로 주문일과 관계없이 예상출고일은 결제완료시점을 기준으로 다시 계산됩니다. <br>

                                    *5~7일 이상이 소요되는 상품(해외개인주문도서 포함)의 경우 거래처 사정에 따라 품절 또는 절판될 수 있습니다. 준비가 되지 않는 경우에는 메일(또는 전화)로 별도 연락 드리겠습니다. <br>

                                    *외국도서(서양도서, 일본도서)의 경우 한정된 수량이 수입되고, 실재고 DB가 Off-Line과 연결되어 있으므로 상품의 유통상 주문 수량이 재고 수량보다 많은 경우 품절 될 수 있음을 알려드립니다. <br>

                                    *외국도서중 국내 출판사를 통해 위탁 판매되고 있는 일부 [수입교재]의 경우 출판사 사정에 의해 출고예정일보다 다소 지연될 수 있음을 사전에 양해 부탁드립니다.<br>
                                </div>
                            </article>
                            <article>
                                <div class="que">
                                    <h2>
                                        <span><i class="fa fa-search" aria-hidden="true"></i></span>
                                        &nbsp;주문한 상품이 아직 안 왔어요.
                                    </h2>
                                    <button class="toggle_btn"><i class="fa fa-angle-down" aria-hidden="true"></i></button>
                                </div>
                                <div class="ans">
                                    주문하신 도서를 아직 못받아 보셨다면 다음 사항을 확인해 주십시오.<br>

                                    1. 주문·배송 확인 시 상품의 처리상태가 포장완료로 되어 있는 경우 이 상품은 당사에서는 출고처리를 한 것입니다. 당사에서 출고처리가 되었으나 2~3일 이내에 받아보시지 못한 경우는 다음을 확인하시기 바랍니다. <br>
                                    
                                    * 배송조회를 확인하셔서 주문하신 상품이 받아보실 주소의 근처 취급소에 있다고 조회되면, 택배사 직원이 방문했음에도 불구하고 부재중이셔서 배송받지 못하신 경우가 많습니다.<br>
                                    
                                    이 경우 고객센터의 Q&A <배송/수령일 안내> 상담이나 전화(국번없이)1544-1900을 이용하시면 신속히 처리해 드립니다. <br>
                                    
                                    * 당일 배송지역의 경우, 배송조회가 되지 않습니다. 주문하신 당일 신속한 배송처리가 되기 때문에 배송조회가 무의미하기 때문입니다. <br>
                                    
                                    2. 주문·배송 확인 시 상품의 처리상태가 품절/절판이라고 되어 있는 경우 상품이 품절/절판인 경우에는 당사에 재고가 없으며, 거래처에서 상품을 더 이상 취급하지 않기 때문에 보내드릴 수 없습니다. <br>
                                    
                                    이 경우 메일로 별도 안내해 드리고 있습니다. <br>
                                    
                                    만약 메일을 받아 보지 못하셨다면, 네트워크의 오류나 메일주소의 오기 또는 메일주소가 없기 때문입니다. <br>
                                    
                                    [마이룸]의 [회원정보 수정]에서 메일주소를 등록 또는 수정해주세요.<br>
                                    
                                    3. 상품준비중 상태가 오래 지속될 경우 주문/배송 조회시 주문상태가 ‘상품준비중’ 단계로 남아 있다면 상품의 출고 예정일을 확인해 주세요.<br>
                                    
                                    여러권을 함께 주문하셨을 경우, 출고 예정일이 가장 늦은 상품에 맞춰 함께 배송됩니다. <br>
                                    
                                    (마이룸 > 주문배송 조회 페이지에서 예약판매 도서를 함께 주문하셨는지 확인해주세요!)<br>
                                </div>
                            </article>
                            <article>
                                <div class="que">
                                    <h2>
                                        <span><i class="fa fa-search" aria-hidden="true"></i></span>
                                        &nbsp;파본/훼손/오배송 된 상품을 교환하고 싶습니다. 어떻게 해야 하나요?
                                    </h2>
                                    <button class="toggle_btn"><i class="fa fa-angle-down" aria-hidden="true"></i></button>
                                </div>
                                <div class="ans">
                                    일반 택배로 배송 받으신 상품에 하자가 있는 경우, 인터넷 홈페이지에서 배송 완료일로 부터 30일 이내 마이 > 주문/ 배송목록 > 주문상세페이지 > 교환신청 가능합니다.<br><br>

 

                                    ※ 도서 자체 인쇄 파본인 경우 문제점 발견 후 30일이내 ※ 단, 우편/ 편의점택배 수령의 경우 회수주소지 정보에 일반 주소지 입력해 주시면 일반택배로 맞교환 진행됩니다. <br>
                                    
                                    고객센터 1:1상담에서 <파본/ 상품불량 신고> 또는 <반품/교환/환불> 상담에 주문번호와 내용을 기재하여 주십시오. <br><br>
                                    
                                     
                                    
                                    담당자 확인 후 주문시의 주소로 상품을 다시 배송 해 드립니다. 파본도서는 배송 된 상품을 받으시면서 맞교환해주시면 됩니다. <br>
                                    
                                    택배직원 편에 반송을 못하셨을 경우, 고객센터의 Q&A <반품/교환/환불>로 문의 접수해주시면, 택배기사가 반품회수 재방문을 하도록 조치해드립니다. <br>
                                    
                                    또는 주문번호와 반송사유를 간략하게 메모하여 착불 반품을 보내주셔도 됩니다. <br><br>
                                    
                                    
                                    
                                    [반송주소]<br>
                                    
                                    일반 택배 반품 시 :(우편번호:10881) 경기도 파주시 문발로 249, 교보문고 A동 2층 인터넷반품담당자 앞<br><br>
                                    
                                     
                                    
                                    위 주소는 인터넷교보문고 구매 고객님께서 이용하시는 반품 주소입니다. <br>
                                    
                                    ※ 택배 반송 시에는 반송영수증을 최소 2개월간 보관하여 주시기 바랍니다.
                                </div>
                            </article>
                            <article>
                                <div class="que">
                                    <h2>
                                        <span><i class="fa fa-search" aria-hidden="true"></i></span>
                                        &nbsp;예치금을 환불받고 싶습니다.
                                    </h2>
                                    <button class="toggle_btn"><i class="fa fa-angle-down" aria-hidden="true"></i></button>
                                </div>
                                <div class="ans">
                                    예치금은 교보문고에서의 상품 구매에 사용하실 수 있으며, 고객계좌로 환불 받으실 수 있습니다. 결제 수단별 환불 반영 기간은 아래와 같습니다.<br>
                                     
                                    - 주문당일 취소 시 환불 반영 기간은 1~2일(영업일 기준)입니다.<br>

                                    - 통합포인트 및 제휴 포인트 환불 반영 기간은 1~2일 (영업일 기준) 입니다. <br>

                                    - 기타 결제수단 (제휴사 포인트 등)인 경우 해당 결제수단에 대한 승인취소로 처리되며, 부득이한 경우 (부분 배송)으로 차액이 발생한 경우 환불해 드리며, 경우에 따라서는 재결제를 해주셔야 하는 경우가 발생할 수 있습니다. <br>

                                    - 마이룸 > 예치금에서 환불신청 및 환불내역을 확인하실 수 있습니다.<br> 

                                    ※ 체크카드는 입금까지 은행 정책에 따라 주말 제외 7~10일 소요됩니다. <br>

                                    ※ 신용카드 환불은 카드사 정책에 따라 취소 반영 기간의 차이가 있으니 자세한 사항은 해당 카드사로 문의해 주시기 바랍니다. <br><br>

                                    

                                    ▣ 2011년 6월 1일 부터 환불관리 규정이 강화되었습니다. <br>

                                    ① 신용카드 ※ 불분명한 사유로 인한 잦은 주문취소/반품 등으로 환불신청을 자주 반복하시는 경우 <br>

                                    - 내역 확인을 위해 시일이 소요되어 처리가 늦어질 수 있으니 고객님의 너그러운 양해를 부탁드립니다. <br>

                                    ② 휴대폰 (소액결제) /집전화결제 ※ 월말에 주문결제 하신 후 익월에 환불신청을 자주 반복하시는 경우 <br>

                                    ※ 불분명한 사유로 인한 잦은 주문취소/반품 등으로 환불신청(월 3회 이상 또는 5만원 이상)을 자주 반복하시는 경우<br>

                                    - 계좌환불 제한, 결제수단 이용 제한, 월별 사용한도 축소 될 수 있으니 신중히 결정해 주시기 바랍니다. <br>

                                    ③ 복합결제 <br>

                                    ※ 제휴사 포인트 등 복합결제 금권은 본 결제수단에 대해 승인취소 처리되며, 당사사유로 인한 주문취소/반품 등이 발생한 경우 내역 확인 후 환불해 드립니다.
                                </div>
                            </article>
                            <article>
                                <div class="que">
                                    <h2>
                                        <span><i class="fa fa-search" aria-hidden="true"></i></span>
                                        &nbsp;인터넷 주문도서의 반품이 가능한가요?
                                    </h2>
                                    <button class="toggle_btn"><i class="fa fa-angle-down" aria-hidden="true"></i></button>
                                </div>
                                <div class="ans">
                                    1.고객님의 변심 또는 주문오류로 인한 반품신청일때,<br>

                                    타 도서로의 교환이 불가하며, <br>
                                    
                                    교보문고에서 주문하신 상품의 경우, 반품 교환이 가능한 종류에 한해 상품을 수령하신 날로부터 7일 이내 반품신청이 가능합니다.<br>
                                    
                                    반송료는 고객님께서 부담하시게 됩니다. <br>
                                    
                                    단, 반품하실 도서는 사용하지 않고, 상품 자체의 비닐 래핑이 되어있는 책은 비닐 래핑은 벗기지 않으며,<br>
                                    
                                    음반의 경우 비닐개봉을 하지 않은 상태로 재생하지 않는 상태일 때 가능합니다. <br><br>
                                    
                                    
                                    
                                    2. 주문하신 상품의 결함 및 계약내용과 다를 경우, 문제점 발견 후 30일 이내 반품신청이 가능합니다. <br><br>
                                    
                                    
                                    
                                    3. 반품 보내기 전 다음과 같이 반품 상품을 준비해주십시오.<br> 
                                    
                                    도서와 함께 받으신 "거래명세서" 뒷 편의 반품신청서 양식을 모두 작성하여 도서와 함께 택배 밀봉포장을 준비하여 주십시오. <br>
                                    
                                    혹시 반품신청서가 없으시면 메모지에 아래의 내용을 기입하여 주십시오. <br><br>
                                    
                                     
                                    
                                    (반품신청서 양식) <br>
                                    
                                    주문번호 : <br>
                                    
                                    고객명 : <br>
                                    
                                    환불요청방법 : <br><br>
                                    
                                     
                                    
                                    (※ 카드 및 핸드폰결제(당월결제), 실시간계좌이체는 반품 시 승인 취소로 환불되며, 온라인송금은 예치금으로 1차 환원 또는 환불계좌를 적어주시면 환불계좌로 환불됩니다.)<br>
                                    
                                    반품보내실 상품과 청약철회서가 준비되셨으면 교보문고에서 반품신청을 해주시면 됩니다. <br><br>
                                    
                                    
                                    
                                    4. 교보문고 마이 > 주문/배송목록 > 주문 상세 > [반품/교환신청] 홈페이지에서 직접 신청하실 수 있으며, 당사와 제휴 된 CJ대한통운 택배로 회수 접수가 됩니다. <br>
                                    
                                    회수기사 방문 전에 미리 도서와 청약철회서를 함께 동봉하여 택배포장을 준비하여 주시기 바랍니다. <br>
                                    
                                    주문 시 배송 방법 중 편의점택배 및 우체국을 이용하셨던 경우, 해당 배송사는 회수가 불가 함으로 일반 주소지로 변경하여 접수하셔야 CJ대한통운 택배로의 반품 신청이 정상적으로 접수됩니다.<br> 
                                    
                                    ※ 우송료 및 쿠폰, 통합포인트 등 금액을 제외한 나머지 도서의 실결제금액이 환불 될 때 택배반송료 2,500원이 고객부담으로 자동차감되며, 나머지 금액만 환불됩니다. <br>
                                    
                                    택배기사님께는 회수반송료를 현금으로 드리거나 혹은 상품 포장 시 동봉하여 보내주시면 안됩니다. <br><br>
                                    
                                    
                                    
                                    5. 개인택배 반품 방법 (선불택배)<br>
                                    
                                    저희 고객센터 또는 홈페이지를 통한 반품을 이용하시기가 어려워 개별 택배로 반품하고자 하실 때는 고객님께서 원하시는 택배사를 자유롭게 선택하셔서 개별 택배 우송료를 부담하시고 보내 주셔야 합니다. <br>
                                    
                                    보내실 반품처 주소는 아래와 같습니다. <br>
                                    
                                    반품처: (우 10881) 경기 파주시 문발로 249, 교보문고 A동 2층 인터넷반품담당자 앞<br>
                                    
                                    위의 방법 중 편하신 방법을 이용하시되, 당사 물류센터로 반품이 되면 반품신청서에 적어주신 환불계좌 또는 그 외 환불 방법으로 환불되며,<br>
                                    
                                    구체적인 환불요청 내역이 기재되어 있지 않은 경우, 주문하신 회원님의 예치금으로 1차 자동 환원됩니다. <br>
                                    
                                    해당 예치금은 다음 주문시 사용하시거나 추후 ​마이 > 나의 통장 > 예치금  [환불신청] 클릭하시고 직접 환불접수도 가능합니다.<br><br>
                                    
                                    
                                    
                                    6. 전 매장 안내데스크<br>
                                    
                                    전 매장 안내데스크에서 교환/환불이 가능합니다.<br>
                                    
                                    (단, 교환은 파본 일 경우에만 매장 재고가 있는 같은 도서로 교환 가능하며 다른 도서로 교환은 되지 않습니다.) <br><br>
                                    
                                    
                                    
                                    ※ 반품주의사항<br>
                                    
                                    1) 해외주문도서(서양서, 일서)는 파본/훼손/오배송 도서를 제외하고는 반품/교환이 되지 않습니다. 해외로 반품이 불가하기 때문에 이 점 양지하여 주십시오. <br>
                                    
                                    2) 음반, 비디오, DVD, CD-ROM 및 S/W의 포장을 개봉했을 때는 반품/교환이 되지 않습니다. 구입 전에 시스템 사양 등을 꼭 확인하시고 구입해 주십시오. <br>
                                    
                                    3) 기타 반품불가품목 잡지, 테이프, 대학입시자료, 사진집, 방통대 교재, 교과서, 만화, 미디어전품목, 악보집, 정부간행물, 지도, 각종 수험서, 적성검사자료, 성경, 사전, 법령집, 지류, 필기구류, 시즌상품, 개봉한 상품 등<br>
                                    
                                    4) 기프트상품 주문은 판매자(업체)에게 개별 반품처리가 되므로 반품 문의 시 당사 고객센터로 연락주시어 문의하시기 바랍니다. <br>
                                    
                                    5) 세트상품의 경우 일부상품만 반품이 불가합니다. 필요시 세트상품 전체 반품 후 개별상품 재구매해 주시기 바랍니다.
                                </div>
                            </article>
                            <article>
                                <div class="que">
                                    <h2>
                                        <span><i class="fa fa-search" aria-hidden="true"></i></span>
                                        &nbsp;회원가입/회원탈퇴는 어떻게 하나요?
                                    </h2>
                                    <button class="toggle_btn"><i class="fa fa-angle-down" aria-hidden="true"></i></button>
                                </div>
                                <div class="ans">
                                    회원가입<br>

                                    1. 개인 회원가입 : 회원가입 > 개인회원 > 본인인증 또는 간편가입 (이메일, 휴대폰), SNS 인증 (네이버, 카카오, 구글, 애플)을 통해 회원가입이 가능합니다.<br> 
                                    
                                      회원가입 바로가기<br>
                                     
                                    
                                    2. 법인 회원가입 : 회원가입 > 법인회원 > 사업자 등록번호 인증을 통해 회원가입이 가능합니다. <br>
                                    
                                      회원가입 바로가기<br>
                                     
                                    
                                    ※ 만 14세 미만 회원 및 법인 회원은 SNS 간편가입이 불가합니다.<br><br>
                                    
                                    
                                    
                                    회원 탈퇴 <br>
                                    
                                    교보문고의 회원가입 및 탈퇴는 방문자의 의사를 존중합니다. 자유롭게 탈퇴하실 수 있으며, 탈퇴 방법은 다음과 같습니다.  회원 탈퇴 전, 유의사항을 반드시 확인해 주세요.<br>
                                    
                                    1. WEB : 마이 > 회원정보관리 > 회원정보 수정 > 회원탈퇴 > 탈퇴사유 입력 후 확인<br>
                                    2. APP : 마이 > 회원정보 수정 > 회원탈퇴 > 탈퇴사유 입력 후 확인<br><br>
                                     
                                    
                                    회원탈퇴 시 유의사항<br>
                                    
                                    1. 회원탈퇴 시 모든 회원정보와 할인쿠폰, 통합포인트, 마일리지, 교환권, 교보캐시, 이벤트 교보e캐시, 구매내역이 자동으로 삭제되며, 복구가 불가합니다.<br>
                                    
                                    2. 자동 삭제 항목(복구 불가능) : 회원정보, 상품구매, eBook 콘텐츠, 할인쿠폰, 마일리지, 통합포인트, 예치금, 교보e캐시 등의 모든 내역<br>
                                    
                                    3. 회원 아이디에 대해서는 서비스 이용의 혼선 방지, 법령에서 규정하는 회원 거래 정보의 보존기간 동안의 보관 의무의 이행, 기타 안정적인 서비스 제공을 위하여 필요한 정보이므로 탈퇴 후 동일 아이디로의 재가입은 허용되지 않습니다.<br>
                                    
                                    4. 다만, 주문 건에 따른 후속처리 발생에 대비하여 최근 1달 내 구매내역이 있으실 경우에는 탈퇴가 불가합니다.<br>
                                    
                                    5. 회원탈퇴 시 SNS 로그인 연동 정보도 자동 해지 됩니다.<br><br>
                                    
                                      
                                    
                                    ※ 직접 탈퇴가 어려우신 경우 고객센터 1544-1900번 전화로 문의를 주시거나 1:1상담을 통해 문의를 남겨주신 후, [개인 정보(정정 삭제) 요구서 양식]을 작성하신 다음 성명, 연락처를 기재해서 FAX(0502-987-5711)로 보내주시면 요청하신 내역에 대해 확인 후 처리하고 답변드리겠습니다. 본인이 아닐 경우는 위임장을 함께 전달해 주셔야 합니다. <br>
                                    
                                    ▶ 양식1. 개인정보(정정·삭제) 요구서 [다운받기] <br>
                                    
                                    ▶ 양식2. 위임장 [다운받기] 
                                </div>
                            </article>
                        </div>
                    </div>

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
   

<!-- 페이지 관련 JS -->
<script src="../../js/board.js"></script>


<!-- *** header | footer *** -->
<script src="../../js/common.js"></script>
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
//         $('a[href="#"]').click(removeHref);
//         // EVT
//         function removeHref(e){
//             e.preventDefault();
//         };
//         $('body').append('<div class="alert yes24"><img src="../../images/alert1.png" alt="준비중 이미지"></div>')

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
<!-- Header Scroll -->
<script src="../../js/scroll_header.js"></script>

</body>
</html>