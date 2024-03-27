$(".btn_plus").click(function(){        
    var num=1;                  
    $("[value=1]").text("[value=num+1]");
});
$(".btn_minus").click(function(){
    $("[value=1]").text("[value=num-1]");
});
    

$('#footerPurchaseInfo').stop().hide();

$(window).on('scroll', function(){
    var scrT = $(this).scrollTop();

    
    if(scrT>1150){
        $('#footerPurchaseInfo').stop().show();
    }else{
        $('#footerPurchaseInfo').stop().hide();
    }
});


var btn_minus = $('.btn_minus');
var btn_plus = $('.btn_plus');

btn_plus.on('click',function(){ 
    let num = Number($('.bookCount').val());
    if(num < 999) num += 1;
    $('.bookCount').val(num);
});

btn_minus.on('click',function(){
    let num = Number($('.bookCount').val());
    if(num > 0) num -= 1;
    $('.bookCount').val(num);
});


/*   Content Box - 목차 | 책 속으로 | 출판사 서평 */
$('#bookIndexBox>.item_head>.tab_box li').click(function(){
    const idx = $(this).index();
    console.log(idx);
    $('.tab_box li').removeClass('on').css({color:'#000'});
    $(this).addClass('on').css({color:'#0080FF'});
    $('.item_tab').hide();
    $('.item_tab').eq(idx).stop().show();
    $('.item_tab>.btn_open').removeClass('active');
    $('.item_txt').css({overflow:'hidden', height:'140px'});
    $('.item_tab>.btn_open').html('<button class="button_open active"><b>펼치기</b><span><i class="fa fa-caret-down" aria-hidden="true"></i></span></button>');         
});

/* 펼치기 | 접기 */
$('.item_tab>.btn_open').click(function(){
    if($(this).hasClass('active')){ 
        $(this).removeClass('active');
        $('.item_txt').css({overflow:'hidden', height:'140px'});
        $('.item_tab>.btn_open').html('<button class="button_open active"><b>펼치기</b><span><i class="fa fa-caret-down" aria-hidden="true"></i></span></button>');         
    }else{
        $(this).addClass('active');
        $('.item_txt').css({overflow:'unset',height:'100%'});
        $('.item_tab>.btn_open').html('<button class="button_open active"><b>접기</b><span><i class="fa fa-caret-up" aria-hidden="true"></i></span></button>');
    } 
});


/* tab : Smooth Scrolling */
$('.item_box .tab_list a').click(function(e){
    e.preventDefault();
    var targetId = $(this).attr('href');
    var top = $(targetId).offset().top;
    // scrollTo(링크될 # || Y축 픽셀값, 애니메이션 시간)
    $(window).scrollTo(top-100, 1000);
});

/* 하단 최종 금액변경 */
var total_price = $('.total_price');
btn_plus.click(function(){
    let num = Number($('.bookCount').val());
    var total_price = 1*16920;
    var total_price = num*16920;
    $('.totalCount').val(total_price.toLocaleString());
});
btn_minus.click(function(){
    let num = Number($('.bookCount').val());
    var total_price = 1*16920;
    var total_price = num*16920;
    $('.totalCount').val(total_price.toLocaleString());
});



