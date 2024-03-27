<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	String id = (String)session.getAttribute("id");
	System.out.println(id);
	if(id==null){
		// 검색결과가 없습니다
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 필요합니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
%>    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>1:1문의 작성</title>
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
    <link rel="stylesheet" href="../../css/boardWrite.css">
    <!-- JS 플러그인 파일 -->
    <script src="../../js/jquery-1.12.4.min.js"></script>
    <script src="../../js/jquery-3.3.1.min.js"></script>
    <script src="../../js/jquery.scrollTo.min.js"></script>
</head>
<%
	String home = request.getContextPath();
%>
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
            <section >
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
                                <a href="#">자주 묻는 질문</a>
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
                                <a href="#" style="color: #0080ff; text-decoration: underline;">1:1 문의</a>
                                <ul class="snb_sub_list">
                                    <li><a href="#">1:1 문의 접수</a></li>
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

                    <!-- Write Form -->
                    <div class="write w980">
                        <h2 class="write_title">1:1 문의 접수</h2>
                        <div class="line"></div>
                        <form action="<%=home %>/WriteCtrl" method="post">
                            <table class="table">
                                <tr>
                                    <th>문의유형*</th>
                                    <td class="type">
                                        <select name="type" id="type" class="write_box" required>
                                            <option value="" selected disabled>문의 유형을 선택해주세요.</option>
                                            <option value="delivery">배송/수령안내</option>
                                            <option value="payment">주문/결제</option>
                                            <option value="refund">반품/교환/환불</option>
                                            <option value="membership">회원정보</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>제목*</th>
                                    <td>
                                        <input type="text" name="title" id="title" placeholder="제목을 입력해 주세요." class="write_box" required>
                                    </td>
                                </tr>
                                <tr>
                                    <th>내용*</th>
                                    <td>
                                        <textarea name="content" id="content" cols="30" rows="15" placeholder="문의 유형을 먼저 선택후 입력 해주세요." class="write_box" required></textarea>
                                    </td>
                                </tr>
                            </table>
                            <div class="line" style="background-color: #d5d5d5;"></div>
                            <div class="btn_box">
                                <input type="submit" value="문의접수" class="btn sub_btn">
                                <input type="reset" value="취소" class="btn reset_btn">
                            </div>
                        </form>
                        <div class="qna_notice">
                            <h3>문의내용 답변 안내</h3>
                            <ul>
                                <li><span>·</span> 답변은 마이룸 또는 회원정보에 등록된 이메일로 확인 가능합니다. (문의내용에 따라 고객센터 또는 매장에서 연락드릴 수 있습니다.)</li>
                                <li><span>·</span> 당일 17시 이후 문의건과 공휴일 1:1 문의는 문의 유형과 이름/연락처/이메일 주소를 남겨 주시면 확인 후 운영시간에 통지해 드립니다.</li>
                                <li><span>·</span> 정상근무일 기준이며, 통지예정일이 휴일인 경우 다음 정상 근무일에 진행 됩니다.</li>
                                <li><span>·</span> 설/추석 연휴 기간 동안은 고객센터 휴무로 인해 1:1 문의 답변이 불가 합니다.</li>
                                <li><span>·</span> 설/추석 연후 끝난 이후부터 순차적으로 답변드릴 예정이니 양해 부탁드립니다.</li>
                                <li><span>·</span> 신학기(3월, 9월)에는 문의량이 급증하여 답변이 지연될 수 있습니다.</li>
                            </ul>
                        </div>


                    </div>
                </div>
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
<!-- Header Scroll -->
<script src="../../js/scroll_header.js"></script>

</body>
</html>