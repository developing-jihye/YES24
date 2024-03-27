// var show_loc = 256;
// $(window).scroll(function(){
//     var scroll_loc = $(window).scrollTop();
//     console.log(scroll_loc);
//     if(scroll_loc>=show_loc){
//         $('.show_header').stop().show();
//         $('.ham_tab').css({position:'fixed', top: 13, left: '50%',transform: 'translateX(-50%)'});
//         $('.ham_box').css({position:'fixed', top: 15, left: '355px', 'z-index': 999999});
//     }else{
//         $('.show_header').stop().hide();
//         $('.ham_tab').css({position:'absolute',left: 0,top: 0, transform: 'translateX(0)'});
//         $('.ham_box').css({position:'absolute', left: 0,top: 0});
        
//     }
    
// });


var show_loc = 256;
$(window).scroll(function(){
    var scroll_loc = $(window).scrollTop();
    const header = $('header');
    const headerIn = $('#headerIn');
    if(scroll_loc>=show_loc){ //현재 윈도우의 스크롤이 256보다 내려갔을 때
        header.addClass('on');
        headerIn.addClass('on');
        headerIn.find('.shortcut_box').removeClass('w1200');
       
        if($('#menuIcon').prop('checked')){
            $('.personal_item').addClass('on');
        }
    }else{
        header.removeClass('on');
        headerIn.removeClass('on');
        headerIn.find('.shortcut_box').addClass('w1200');
        $('.personal_item').removeClass('on');
        
    }
});


$('.top_btn > a').click(function(e){
    e.preventDefault();
    $('html,body').stop().animate( { scrollTop : 0 }, 200 );
});

// $('.top_btn a').click(function(e){
//     e.preventDefault();
//     $(window).scrollTo(this.hash || 0,500);
// });