
<%@page import="model.BoardQnaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String home = (String)request.getContextPath();
	String id = (String)session.getAttribute("id");
	if(id == null){
		response.sendRedirect(home+"/index.jsp");
	}
	ArrayList<BoardQnaDTO> list = (ArrayList)request.getAttribute("list");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yes24-1:1문의</title>
    <!-- í°í¸ì´ì¸ cdn -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- pcì© íë¹ì½ -->
    <link rel="shortcut icon" href="../../images/favicon/favicon_yes.ico">
    <!-- ëë°ì´ì¤ì© íë¹ì½ -->
    <link rel="apple-touch-icon=precomposed" href="../../images/favicon/favicon_yes.ico">
    <!-- prefix jsíì¼ -->
    <script src="../../js/prefixfree.min.js"></script>
    <!-- ë¦¬ì -->
    <link rel="stylesheet" href="../../css/reset.css">
    <!-- íì´ì§ CSS -->
    <link rel="stylesheet" href="../../css/boardList.css">
    <!-- JS íë¬ê·¸ì¸ íì¼ -->
    <script src="../../js/jquery-1.12.4.min.js"></script>
    <script src="../../js/jquery-3.3.1.min.js"></script>
    <script src="../../js/jquery.scrollTo.min.js"></script>

    <style>
        .title_sub{
            position:relative;
        }
    	.btn_ask{
			padding:10px;
			background:#0080ff;
			color:#fff;
			border-radius:5px;
			position:absolute;
			top:-10px; 
			right:0;
            font-size:14px;
            transition:opacity 0.3s;
		}
    	.btn_ask:hover{
            opacity: 0.7;
        }
    </style>
    
</head>
<body>
    <!-- íë²í¼/ê´ê³  -->
    <div class="circle_btn">
        <div class="circle_ad">
            <div class="ad_btn"><a href="#"><img src="../../images/icon_ad_1.png" alt="Ad Image"></a></div>
        </div>
        <div class="circle_top">
            <div class="top_btn"><a href="#wrap"><img src="../../images/icon_stepOut_48.png" alt="Top Button"></a></div>
        </div>
    </div>
    <!-- /íë²í¼/ê´ê³  -->
    <div id="wrap">
        <!-- Header -->
        <header class="header w1200">

        </header>
        <!-- Header -->
        <!-- Main -->
        <main>
            <section>
                <!-- Content Box -->
                <div class="faq_wrap w1200">
                    <!-- SNB ìì­ -->
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

                    <!-- FAQ contents ìì­ -->
                    <div class="w980">
                        <h2>1:1문의</h2>
                        
                       
                        <h3 class="title_sub">문의내역 <button type="button" class="btn_ask">1:1 문의하기</button></h3>
                        <div class="best_10_wrap">
                            <div class="contact_list">
                                <ul>
                                    
									<% for(int i=0; i<list.size(); i++){ %>
                                    <li class="contact_item">
                                        <div class="contact_title"><i class="fa fa-question-circle" aria-hidden="true"></i>	<%= list.get(i).getTitle() %></div>
                                        
                                        <button type="button" class="btn_toggle" onclick="askToggle(this);"><i class="fa fa-chevron-down" aria-hidden="true"></i></button>
                                        <div class="contact_content">
	                                        <div class="contact_ask">
		                                        <div class="contact_main">
		                                        	<%= list.get(i).getContent() %>
		                                        </div>
	                                        	<div class="contact_sub">
	                                        		<button onclick="location.href = '#'">수정</button>
	                                        		<button onclick="location.href = '#'">삭제</button>
	                                        	</div>
	                                        </div>
	                                        <div class="contact_re">
	                                       	 	<div class="contact_main">
	                                        		<%= list.get(i).getTitle() %>
	                                        	</div>
	                                        	<div class="contact_sub">
	                                        		<span>2024-02-23</span>
	                                        	</div>
	                                        </div>
                                        </div>
                                        
                                    </li>
									<% } %>
                                    
                                </ul>
                            </div>
                            <div class="contact_text" style="display: none;">
                                <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                문의내역이 없습니다.
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /Content Box -->
            </section>
        </main>
        <!-- /Main -->
        
        <!-- Footer -->
        <footer>

        </footer>
        <!-- /Footer -->
    </div>
   

<!-- íì´ì§ ê´ë ¨ JS -->
<script src="../../js/board.js"></script>


<!-- *** header | footer *** -->
<script src="../../js/common.js"></script>
<script>
    $('header').load('./header.html',function(){
        $('.hamburger > label').on('click',function(){
            var scroll_loc = $(window).scrollTop();
            if(scroll_loc>=show_loc){ //íì¬ ìëì°ì ì¤í¬ë¡¤ì´ 256ë³´ë¤ ë´ë ¤ê°ì ë
                if($('#menuIcon').prop('checked')){
                    $('.personal_item').removeClass('on');
                }else{
                    $('.personal_item').addClass('on');
                }
                
            }
            console.log('click');
        });
    });
    $('footer').load('./footer.html',function(){
        $('a[href="#"]').click(removeHref);
        // EVT
        function removeHref(e){
            e.preventDefault();
        };
        $('body').append('<div class="alert yes24"><img src="../../images/alert1.png" alt="ì¤ë¹ì¤ ì´ë¯¸ì§"></div>')

        $('a[href="#"]').click(function(e){
        e.preventDefault();
        // í¨ê³¼ ë©ìë ëì¤ëë¡ ì½ë©
        $('.alert').stop().fadeIn(500);
        // 3ì´íì ìëì¼ë¡ ì¬ë¼ì§ëë¡ ì½ë©
        setTimeout(function(){
            $('.alert').stop().fadeOut(500);
        },2000);

        });
    });
    
    let toggle = true;
    function askToggle(tar){
    	console.log(tar.nextElementSibling);
    	if(toggle){
    		tar.parentElement.classList.add("on");
    		tar.firstElementChild.classList.remove("fa-chevron-down");
    		tar.firstElementChild.classList.add("fa-chevron-up");
    		toggle = !toggle;
    	}else{
    		tar.parentElement.classList.remove("on");
    		tar.firstElementChild.classList.remove("fa-chevron-up");
    		tar.firstElementChild.classList.add("fa-chevron-down");
    		toggle = !toggle;
    	}
    	
    }
    
</script>
<!-- Header Scroll -->
<script src="../../js/scroll_header.js"></script>

</body>
</html>