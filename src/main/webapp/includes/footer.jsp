<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String home = request.getContextPath();
%>    
<!-- Footer -->
<div class="footer_notice">
    <p><span>공지사항</span>&nbsp;&nbsp;<a href="#">예스24 현대카드 3만 캐시백 이벤트</a>&nbsp;&nbsp;&nbsp;<a href="#"><span>더보기&nbsp;<i class="fa fa-plus" aria-hidden="true"></i></span></a></p>
    <p><span>당첨자 발표</span>&nbsp;&nbsp;<a href="#">[ebook] <2023 NENE AWARDS> 이벤트💙당첨자 발표</a>&nbsp;&nbsp;&nbsp;<a href="#"><span>더보기&nbsp;<i class="fa fa-plus" aria-hidden="true"></i></span></a></p>
</div>
<div class="footer_bottom">
    <div class="footer_left">
        <div class="footer_logo"><a href="#"><img src="<%=home %>/images/logo_2.png" alt="푸터흑백로고"></a></div>
        <ul class="info_lists">
            <li><a href="#">회사소개&nbsp;|&nbsp;</a></li>
            <li><a href="#">이용약관&nbsp;|&nbsp;</a></li>
            <li><a href="#"><strong>개인정보처리방침</strong>&nbsp;|&nbsp;</a></li>
            <li><a href="#">청소년보호대책&nbsp;|&nbsp;</a></li>
            <li><a href="#">대량주문안내&nbsp;|&nbsp;</a></li>
            <li><a href="#">협력사여러분&nbsp;|&nbsp;</a></li>
            <li><a href="#">채용정보&nbsp;|&nbsp;</a></li>
            <li><a href="#">광고소개</a></li>
        </ul>
        <p>
            서울시 영등포구 은행로 11, 5층~6층(여의도동,일신빌딩) 대표 : 김석환, 최세라 개인정보보호책임자 : 권민석 yes24help@yes24.com <br>
            <span>대표전화: 1544-3800(발신자 부담전화)</span>  사업자등록번호 : 229-81-37000 통신판매업신고 : 제 2005-02682호
        </p>
        <p>
            Copyright &copy; YES24 Corp. All Rights Reserved.
        </p>
    </div>
    <div class="footer_right">
        <div class="links">
            <div class="fam_site">
                <input type="checkbox" id="famSite"/>
                <button type="button" class="btn_fam_site">
                    <label for="famSite">
                        <span>Family Site</span>
                        <img src="<%=home %>/images/icon_arrowBack_18.png" alt="버튼" />
                    </label>
                    <ul class="fam_site_list">
                        <li><a href="https://www.hansaeyes24.com/" target="_blank">한세예스24홀딩스</a></li>
                        <li><a href="https://www.hansae.com/" target="_blank">한세실업</a></li>
                        <li><a href="http://www.hansaedreams.co.kr/" target="_blank">한세드림</a></li>
                        <li><a href="https://www.curlysue.co.kr/" target="_blank">컬리수</a></li>
                        <li><a href="https://www.style24.com/" target="_blank">STYLE24</a></li>
                        <li><a href="https://www.bookdonga.com/main.donga" target="_blank">동아출판</a></li>
                    </ul>
                </button>
            </div>
            <ul class="sns">
                <li><a href="https://www.youtube.com/@yes24_official" target="_blank"><i class="fa fa-youtube-square" aria-hidden="true"></i></a></li>
                <li><a href="https://www.facebook.com/yes24/" target="_blank"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                <li><a href="https://www.instagram.com/yes24_official/" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
            </ul>
        </div>
        <p>토스페이먼츠 구매안전 서비스</p>
        <p>
            고객님은 안전거래를 위해 현금 등으로 결제시 저희 쇼핑몰에서 가입한<br>
            토스페이먼츠의 구매안전서비스를 이용하실 수 있습니다
        </p>
        <div class="certi">
            <a href="#"><img src="<%=home %>/images/certi_1.png" alt="정보보호인증"></a>
            <p>
                [인증범위] 온라인 YES24 서비스 운영<br>
                [유효기간] 2020.11.04 ~ 2023.11.03
            </p>
        </div>
    </div>
</div>
<script>
	 // EVT
	 function removeHref(e){
	     e.preventDefault();
	 };
	 $('body').append('<div class="alert yes24"><img src="<%=home%>/images/alert1.png" alt="준비중 이미지"></div>')
	
	 $('a[href="#"]').click(function(e){
	 e.preventDefault();
	 // 효과 메서드 나오도록 코딩
	 $('.alert').stop().fadeIn(500);
	 // 3초후에 자동으로 사라지도록 코딩
	 setTimeout(function(){
	     $('.alert').stop().fadeOut(500);
	 },2000);
	
	 });
</script>
<!-- /Footer -->
