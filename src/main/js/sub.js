/* 썸네일 이미지 연결 */
// 1-1. DOM객체 선택 = #cup, querySelector() 이용, 변수명 bigPic | (콘솔)캡쳐, 넘버링
const bigPic = document.querySelector("#big");
console.log(bigPic);
// 1-2. DOM객체 선택 = .small, querySelectorAll() 이용, 변수명 smallPic | (콘솔)캡쳐, 넘버링
const smallPic = document.querySelectorAll(".small");
console.log(smallPic);
// 2. 이벤트 리스너 작성
function changePic() {
    var newPic = this.src;
    console.log("작은 이미지 클릭시 this : " + newPic);
    // setAttribute() 사용 각각 이벤트 클릭시 이미지 바뀌도록 코딩
    bigPic.setAttribute("src",newPic);
}
// 3. 이벤트 리스너 연결 = 배열 요소 추출
var i;
for(i=0; i<smallPic.length; i++){
    smallPic[i].addEventListener('click',changePic);
}

/* 썸네일 텍스트 */
/* DOM객체 탭메뉴명 변수로 할당 */
var tab = $('.thumb_img').find('li');
// (콘솔창)tab의 갯수 출력 | 탭메뉴 li갯수 : ???
console.log('탭메뉴 li갯수 : ' + tab.length);

/* Event Listenter */
// 매개변수값 테스트 = 0~4
/* function tab_menu(num) {
    alert(num);
}; */

var i;
function tab_menu(num) {
    for(i=0; i<tab.length; i++){
        if(num == i){
            // a-1. active 클래스 적용
            tab.eq(i).addClass('active');
            // b-1. 콘텐츠 보여주기
            $('.today_pick_desc0' + i).show();
        }else{
            // a-2. active 클래스 제거
            tab.eq(i).removeClass('active');
            // b-2. 나머지 콘텐츠 가리기
            $('.today_pick_desc0' + i).hide();
        }
    }
};

/* 썸네일 스와이프 */
var swiper = new Swiper('.swiper-container',{
    /* 슬라이드 보이는 갯수 */
    slidesPerView: 6,
    /* 슬라이드 반복 여부 */
    loop: true,
    /* 다음 슬라이드와의 간격 */
    spaceBetween: 40,
    /* 네비게이션 좌우화살표 */
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    }
});