<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String home = request.getContextPath();
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yes24-로그인</title>
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
    <link rel="stylesheet" href="../../css/login.css">
    <!-- JS 플러그인 파일 -->
    <script src="../../js/jquery-1.12.4.min.js"></script>
    <script src="../../js/jquery-3.3.1.min.js"></script>
    <script src="../../js/jquery.scrollTo.min.js"></script>

    
    
</head>
<body>
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
                <div class="w340">
                    <h2>로그인</h2>
                    <form action="<%=home %>/LoginCtrl" method="post">
                        <fieldset>
                            <input type="text" name="id" id="a_id" placeholder="아이디를 입력해주세요." required>
                        </fieldset>
                        <fieldset>
                            <input type="password" name="password" id="a_pw" placeholder="비밀번호를 입력해주세요." required>
                        </fieldset>
                        	<input type="submit" value="로그인" class="login">
                    </form>
                    <div class="id_save">
                        <input type="checkbox" name="save" id="save">
                        <label for="save">아이디 저장</label>
                        <a href="#">아이디/비밀번호 찾기</a>
                    </div>
                    <div class="sns_login">
                        <a href="#"><img src="../../images/icon_naver_48.png" alt="네이버"></a>
                        <a href="#"><img src="../../images/icon_kakaotalk_48.png" alt="카카오톡"></a>
                        <a href="#"><img src="../../images/icon_google_48.png" alt="구글"></a>
                        <p>
                            개인정보 보호를 위해 공용 PC에서 사용 시 <br>
                            SNS계정의 로그아웃 상태를 꼭 확인해 주세요.
                        </p>
                    </div>
                    <a href="./register.jsp"><button class="join">회원가입</button></a>
                    <a href="#"><button class="unUser">비회원 주문조회</button></a>

                    <hr>

                    <a href="#"><button class="phone">휴대폰번호로 로그인</button></a>
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


<!-- Header Scroll -->
<script src="../../js/scroll_header.js"></script>


</body>
</html>