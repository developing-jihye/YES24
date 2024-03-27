// 로딩 시 안 보이게
$('.ans').stop().hide();
var dir = 0;
$('.toggle_btn').click(function(){
    dir += 180;
    $(this).css('transform','rotate('+dir+'deg)');
    $(this).parent().next().stop().slideToggle(100);
});