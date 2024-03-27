<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yes24-회원가입</title>
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
    <link rel="stylesheet" href="../../css/register.css">
    <!-- JS 플러그인 파일 -->
    <script src="../../js/jquery-1.12.4.min.js"></script>
    <script src="../../js/jquery-3.3.1.min.js"></script>
    <script src="../../js/jquery.scrollTo.min.js"></script>  
</head>
<body>
    <div id="wrap">
        <!-- Header -->
        <!-- <header>
            <h1 class="logo w400"><a href="#"><img src="../../images/logo_1.png" alt="메인로고"></a></h1>
        </header> -->
        <header class="header w1200">
        	<jsp:include page="../../includes/header.jsp"></jsp:include>
        </header>
        <!-- Header -->
        <!-- Main -->
        <main>
            <section>
                <!-- Content Box -->
                <div class="w400">
                    <h2>회원가입</h2>
<%
	String home = request.getContextPath();
%>
                    <form action="<%=home %>/JoinCtrl" method="post">
                        <!-- 회원정보 입력 -->
                        <div class="form_wrap">
                            <div class="title_box">
                                <h3>회원정보 입력</h3>
                                <p>필수 입력</p>
                            </div>
                            <div class="form_box">
                                <label for="id">아이디</label>
                                <input type="text" name="id" id="id" placeholder="아이디를 입력해 주세요.">
                            </div>
                            <div class="form_box">
                                <label for="pw">
                                    비밀번호
                                    <a href="#"><i class="fa fa-eye-slash" aria-hidden="true"></i></a>
                                </label>
                                <input type="password" name="password" id="pw" minlength="8" placeholder="비밀번호를 입력해 주세요.">
                                <div class="pwsafey_boxes">
                                    <div class="bars">
                                        <div class="bar"></div>
                                        <div class="bar"></div>
                                        <div class="bar"></div>
                                    </div>
                                    <p>안전도</p>
                                </div>
                                <div class="pw_condition">
                                    <p>
                                        <i class="fa fa-check" aria-hidden="true"></i>&nbsp;영문, 숫자, 특수문자 3가지 조합 8자리 이상 또는<br> 
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2가지 조합 10자리 이상
                                    </p>
                                    <p>
                                        <i class="fa fa-check" aria-hidden="true"></i>&nbsp;공백 및 3자 이상의 연속 또는 중복 문자는 사용 불가
                                    </p>
                                </div>
                            </div>
                            <div class="form_box">
                                <label for="pw_ch">
                                    비밀번호 확인
                                    <a href="#"><i class="fa fa-eye-slash" aria-hidden="true"></i></a>
                                </label>
                                <input type="password" name="pass2" id="pw_ch" minlength="8" placeholder="비밀번호를 한 번 더 입력해 주세요.">
                            </div>
                            <div class="form_box">
                                <label for="name">이름</label>
                                <input type="text" name="name" id="name" placeholder="이름을 입력해 주세요.">
                            </div>
                            <div class="form_box">
                                <label for="phone">휴대폰번호</label>
                                <input type="text" name="phone" id="phone" placeholder="010-1234-5678">
                            </div>
                            <div class="form_box">
                                <label for="email">이메일</label>
                                <div class="email_boxes">
                                    <input type="text" name="email" id="email" placeholder="이메일을 입력해 주세요.">
                                    <div class="btn_email"><a href="#">인증번호 발송</a></div>
                                </div>
                            </div>
                            <div class="form_box">
                                <label for="birth">생년월일/성별</label>
                                <div class="birth_boxes">
                                    <input type="date" name="birth" id="birth" placeholder="20231213">
                                    <div class="sexuality">
                                        <input type="checkbox" name="male" id="male">
                                        <label for="male">남</label>
                                        <input type="checkbox" name="female" id="female">
                                        <label for="female">여</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /회원정보 입력 -->
                        
                        <!-- 서비스 이용약관 동의 -->
                        <div class="check_wrap">
                            <h3>서비스 이용약관 동의</h3>
                            <div class="check_row">
                                <input type="checkbox" name="#" id="chk_1">
                                <label for="chk_1">
                                    <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                                    <p>약관 전체 동의</p>
                                </label>
                            </div>
                            <div class="check_row">
                                <ul>
                                    <li>
                                        <div>
                                            <input type="checkbox" name="agr1" id="chk_2">
                                            <label for="chk_2">
                                                <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                                                <p>예스24 이용약관&nbsp;<span>(필수)</span></p>
                                            </label>
                                        </div>
                                        <a href="#">
                                            내용보기&nbsp;<i class="fa fa-angle-right" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <div>
                                            <input type="checkbox" name="agr2" id="chk_3">
                                            <label for="chk_3">
                                                <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                                                <p>개인정보 수집 및 이용 동의&nbsp;<span>(필수)</span></p>
                                            </label>
                                        </div>
                                        <a href="#">
                                            내용보기&nbsp;<i class="fa fa-angle-right" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <div>
                                            <input type="checkbox" name="agr3" id="chk_4">
                                            <label for="chk_4">
                                                <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                                                <p>개인정보 처리 위탁 동의&nbsp;<span>(필수)</span></p>
                                            </label>
                                        </div>
                                        <a href="#">
                                            내용보기&nbsp;<i class="fa fa-angle-right" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="check_row">
                                <ul>
                                	
                                    <li>
                                        <input type="checkbox" name="agr5" id="chk_6">
                                        <label for="chk_6">
                                            <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                                            <p>마케팅 수신 동의&nbsp;<b>(선택)</b></p>
                                        </label>
                                        <div class="chk_market">
                                            <input type="checkbox" name="agr4" id="chk_7">
                                            <label for="chk_7">
                                                <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                                                <p>SMS</b></p>
                                            </label>
                                            <input type="checkbox" name="agr5" id="chk_8">
                                            <label for="chk_8">
                                                <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                                                <p>이메일</b></p>
                                            </label>
                                            <p>
                                                마케팅 수신 동의 시 다양한 혜택을 받아볼 수 있습니다.
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- /서비스 이용약관 동의 -->
                        <!-- <div class="complete_btn"><a href="#">회원가입</a></div> -->
                        <input type="submit" value="회원가입" class="complete_btn">
                    </form>
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


<!-- 스크립트 -->

<!-- Header Scroll -->
<script src="../../js/scroll_header.js"></script>

<!-- 페이지 JS -->
<script src="../../js/register.js"></script>
</body>
</html>