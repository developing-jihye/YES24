
<%@page import="model.BoardQnaDAO"%>
<%@page import="java.sql.Date"%>
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
	BoardQnaDAO dao = new BoardQnaDAO();
	BoardQnaDTO reple;

	
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
    <link rel="shortcut icon" href="<%= home %>/images/favicon/favicon_yes.ico">
    <!-- ëë°ì´ì¤ì© íë¹ì½ -->
    <link rel="apple-touch-icon=precomposed" href="<%= home %>/images/favicon/favicon_yes.ico">
    <!-- prefix jsíì¼ -->
    <script src="../../js/prefixfree.min.js"></script>
    <!-- ë¦¬ì -->
    <link rel="stylesheet" href="<%= home %>/css/reset.css">
    <!-- íì´ì§ CSS -->
    <link rel="stylesheet" href="<%= home %>/css/boardList.css">
    <!-- JS íë¬ê·¸ì¸ íì¼ -->
    <script src="<%= home %>/js/jquery-1.12.4.min.js"></script>
    <script src="<%= home %>/js/jquery-3.3.1.min.js"></script>
    <script src="<%= home %>/js/jquery.scrollTo.min.js"></script>

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
            <div class="ad_btn"><a href="#"><img src="<%= home %>/images/icon_ad_1.png" alt="Ad Image"></a></div>
        </div>
        <div class="circle_top">
            <div class="top_btn"><a href="#wrap"><img src="<%= home %>/images/icon_stepOut_48.png" alt="Top Button"></a></div>
        </div>
    </div>
    <!-- /íë²í¼/ê´ê³  -->
    <div id="wrap">
        <!-- Header -->
        <header class="header w1200">
			<jsp:include page="./header.jsp" />
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
                        
                       
                        <h3 class="title_sub">문의내역 <button type="button" class="btn_ask" onclick="location.href = '<%= home %>/pages/board/boardWrite.jsp'">1:1 문의하기</button></h3>
                        <div class="best_10_wrap">
                        <% if(list != null){ %>
                            <div class="contact_list">
                                <ul>
                                    
									<% 
										for(int i=0; i<list.size(); i++){
											reple = dao.getReBoard(list.get(i).getNum());
											//System.out.println(i + "답변 : " + reple);
									%>
                                    <li class="contact_item">
                                    	<div class="contact_h">
                                        	<% if(reple != null){ %>
                                        	<span>답변완료</span>
                                        	<% } %>
                                        	<span><%= list.get(i).getType()  %></span>
                                        	<span><%= list.get(i).getRegdate()  %></span>
                                        </div>
                                        <div class="contact_title"><i class="fa fa-commenting-o" aria-hidden="true"></i><%= list.get(i).getTitle() %></div>
                                        
                                        <button type="button" class="btn_toggle" onclick="askToggle(this);"><i class="fa fa-chevron-down" aria-hidden="true"></i></button>
                                        <div class="contact_content">
	                                        <div class="contact_ask">
		                                        <div class="contact_main">
		                                        	<%= list.get(i).getContent() %>
		                                        </div>
	                                        	<div class="contact_sub">
	                                        	<% if(reple == null){ %>
	                                        		<button onclick="location.href = 'UpdateCtrl?num=<%= list.get(i).getNum() %>'">수정</button>
                                        		<% } %>
	                                        		<button onclick="location.href = 'DeleteCtrl?num=<%= list.get(i).getNum() %>'">삭제</button>
	                                        	</div>
	                                        </div>
	                                        <!-- 리플 -->
	                                        <% if(reple != null){ %>
	                                        <div class="contact_re">
	                                        	<span class="contact_re_date"><%= reple.getRegdate() %></span>
	                                       	 	<div class="contact_main" id="contact_main_<%= i %>">
	                                       	 		
	                                        		<%= reple.getContent() %>
	                                        		
	                                        	</div>
	                                        	<div class="contact_sub">
	                                        		<button onclick="editForm(this,<%= i %>,'<%= reple.getContent() %>',<%= reple.getNum() %>);">수정</button>
	                                        		<button onclick="return submitForm('repleForm_<%= i %>');" style="display:none;">완료</button>
	                                        		<button onclick="location.href = 'BoardRepleCtrl?num=<%=reple.getNum()%>&step=1&action=del'">삭제</button>
	                                        	</div>
	                                        </div>
	                                        <% }else{ %>
	                                        <div class="contact_re">
	                                       	 	<div class="contact_main" id="contact_main_<%= i %>">
	                                       	 		<form action="BoardRepleCtrl" method="post" id="repleForm_<%= i %>">
	                                       	 			<input type="hidden" name="ref" value="<%= list.get(i).getNum() %>" />
	                                       	 			<input type="hidden" name="type" value="<%= list.get(i).getType() %>" />
	                                       	 			<input type="hidden" name="title" value="<%= list.get(i).getTitle() %>" />
	                                       	 			<textarea name="content" class="contact_reple"  rows="10"></textarea>
	                                       	 		</form>
	                                        	</div>
	                                        	<div class="contact_sub">
	                                        		<button onclick="return submitForm('repleForm_<%= i %>');">등록</button>
	                                        	</div>
	                                        </div>
	                                        <% } %>
                                        </div>
                                        
                                    </li>
                                    
									<% } %>
                                    
                                </ul>
                            </div>
                            <% }else{ %>
                            <div class="contact_text" style="display: none;">
                                <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                문의내역이 없습니다.
                            </div>
                            <% } %>
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
   
<script>

	function submitForm(tar){
		let targetForm = document.getElementById(tar);
		targetForm.submit();
		return false;
	}
	
	function editForm(tar,i,con,num){
		let targetForm = document.getElementById("contact_main_"+i);
		tar.style.display = "none";
		tar.nextElementSibling.style.display = "block";
		let data = '<form action="BoardRepleCtrl" method="post" id="repleForm_'+i+'">';
		data += '<input type="hidden" name="action" value="edit" />';
		data += '<input type="hidden" name="num" value="'+num+'" />';
		data += '<input type="hidden" name="step" value="1" />';
		data += '<textarea name="content" class="contact_reple" rows="10">'+con+'</textarea>';
		data += '</form>';
		targetForm.innerHTML = data;
	}

	
	function askToggle(tar){
		console.log(tar.nextElementSibling);
		if(tar.parentElement.classList.contains("on") == false){
			tar.parentElement.classList.add("on");
			tar.firstElementChild.classList.remove("fa-chevron-down");
			tar.firstElementChild.classList.add("fa-chevron-up");
			
		}else{
			tar.parentElement.classList.remove("on");
			tar.firstElementChild.classList.remove("fa-chevron-up");
			tar.firstElementChild.classList.add("fa-chevron-down");
	
		}
		
	}
</script>
<!-- íì´ì§ ê´ë ¨ JS -->
<script src="<%= home %>/js/board.js"></script>


<!-- *** header | footer *** -->
<script src="<%= home %>/js/common.js"></script>
<script>
    <%-- $('header').load('<%= home %>/header.jsp',function(){
        $('.hamburger > label').on('click',function(){
            var scroll_loc = $(window).scrollTop();
            if(scroll_loc>=show_loc){ 
                if($('#menuIcon').prop('checked')){
                    $('.personal_item').removeClass('on');
                }else{
                    $('.personal_item').addClass('on');
                }
                
            }
            console.log('click');
        });
    }); --%>
    $('.hamburger > label').on('click',function(){
        var scroll_loc = $(window).scrollTop();
        if(scroll_loc>=show_loc){ 
            if($('#menuIcon').prop('checked')){
                $('.personal_item').removeClass('on');
            }else{
                $('.personal_item').addClass('on');
            }
            
        }
        console.log('click');
    });
    $('footer').load('./footer.html',function(){
        $('a[href="#"]').click(removeHref);
        // EVT
        function removeHref(e){
            e.preventDefault();
        };
        $('body').append('<div class="alert yes24"><img src="<%= home %>/images/alert1.png" alt="ì¤ë¹ì¤ ì´ë¯¸ì§"></div>')

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
    
    
    
</script>
<!-- Header Scroll -->
<script src="<%= home %>/js/scroll_header.js"></script>

</body>
</html>