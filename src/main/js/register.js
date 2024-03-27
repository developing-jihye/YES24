// 성별 선택 중복 제거
$('#male').on('click', function(){
    $('#male').prop('checked', true);
    $('#female').prop('checked', false);
});
$('#female').on('click', function(){
    $('#female').prop('checked', true);
    $('#male').prop('checked', false);
});

// 약관 전체 동의
$('#chk_1').on('click', function(){
	var checked = $(this).is(':checked');
    
    if(checked) {
    	$('input[id^="chk_"]').prop('checked', true);
    } else {
    	$('input[id^="chk_"]').prop('checked', false);
    }

});
// 하나라도 해제하면 전체 동의 해제
$('input[id^="chk_"]').click(function() {
            var total = $('input[id^="chk_"]').length;
            var checked = $('input[id^="chk_"]:checked').length;
            
            if(total != checked) $("#chk_1").prop("checked", false);
            else $("#chk_1").prop("checked", true);
        });


// 마케팅 수신 동의
$('#chk_6').on('click', function(){
    var checked = $(this).is(':checked');
    
    if(checked) {
        $('.chk_market input').prop('checked', true);
    } else {
        $('.chk_market input').prop('checked', false);
    }
});
// 하나라도 해제하면 마케팅 수신 동의 해제
$('.chk_market input').click(function() {
            var total = $('.chk_market input').length;
            var checked = $('.chk_market input:checked').length;
            
            if(total != checked) $("#chk_6").prop("checked", false);
            else $("#chk_6").prop("checked", true);
        });