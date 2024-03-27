/* 랭킹 리스트 롤링 */
const listRolling = (items,options) => {
    /* **** 기본값(default) ****
        
        options.delay = 3000(default): Number //롤링 딜레이시간
        options.count = 1(default) : Number //롤링 최초카운트 인덱스
        options.mouseover = true(default) : Boolean //마우스가 롤링에 올라갔을 때 멈추게하는 기능
        options.start = true(default) : Boolean //롤링 기능 on/off
    **** */
    /* 파라미터 기본값 */
    options.delay = options.delay || 3000; 
    options.count = options.count || 1;
    options.mouseover = ((typeof options.mouseover === 'boolean')? true : false)?options.mouseover:((options.mouseover === 'true' || options.mouseover === 'false')?JSON.parse(options.mouseover):true); //마우스오버 효과
    
    if(!options.start) return; //options.start가 false일 경우 기능 정지

    /* 변수설정 */
    const target = document.querySelector(options.ele); //롤링을 실행할 앨리먼트객체
    const targetNum = target.childElementCount; //롤링을 실행할 앨리먼트객체의 자식 개수
    const targetItem = target.children; //롤링을 실행할 앨리먼트객체의 자식태그들
    const rankImg = document.querySelector('#rankImg'); //각 아이템의 썸네일 이미지 앨리먼트객체
    const rankTxt = document.querySelector('#rankTxt'); //각 아이템의 설명 내용 앨리먼트객체
    let x,i,w,t; //for문 변수 정의

    /* 리스트 순서 정해주기 */
    for(x=0; x<targetNum; x++){
        targetItem[x].setAttribute('data-num',x); //롤링될 앨리먼트객체에 data-num 속성값을 부여
        for(t=0; t<targetItem[x].childElementCount; t++){
            targetItem[x].querySelectorAll('span')[t].setAttribute('data-num',x); //롤링될 앨리먼트객체에 data-num 속성값을 부여
        }
    }
    let num = options.count; //최초 카운트값 설정
    
    /* 롤링 */
    const rollingInterval = setInterval(function(){
        for(i=0; i<targetNum; i++){
            targetItem[i].classList.remove('on'); //모든 아이템의 'on' class 삭제
        }
        if(num == targetNum ) num = 0; //아이템 개수와 num값이 일치하면 num 값 초기화
        if(num < targetNum){ //아이템 개수보다 num값이 작으면 실행
            targetItem[num].classList.add('on'); //현재 아이템에 'on' class 추가
            
            rankImg.src = items[num].src; //랭킹이미지
            rankTxt.querySelector('.book_title a').innerText = items[num].title; //제목
            rankTxt.querySelector('.book_author').innerText = items[num].author; //저자
            rankTxt.querySelector('.book_price').innerHTML = `<span>${items[num].discount}</span><b>${items[num].price}</b>원`; //가격
            rankTxt.querySelector('.book_ex').innerText = items[num].contents; //텍스트
            num++; //num값 + 1
            
        }
    },options.delay);
    
    /* mouseover */
    if(options.mouseover){ //options.mouseover가 true일 때
        
        /* 마우스가 타겟 위에 있을 경우 */
        target.addEventListener('mouseover',()=>{
            clearInterval(rollingInterval);
        });
        /* 마우스가 타겟을 벗어났을 경우 */
        target.addEventListener('mouseleave',()=>{
            options.count = num; //타겟을 벗어났을 때 num값을 count에 부여해 다음 재귀함수 초기값으로 선언
            listRolling(items,options); //타겟을 벗어났을 때 재귀함수 실행
        });  

        /* 클릭 */
        target.addEventListener('click',(e)=>{
            
            num = e.target.getAttribute('data-num'); //현재 클릭한 아이템의 순서를 num 값에 부여
            for(w=0; w<targetNum; w++){
                targetItem[w].classList.remove('on'); //롤링의 모든 앨리먼트 객체에 on 클래스 삭제
            }
            rankImg.src = items[num].src; //랭킹이미지
            rankTxt.querySelector('.book_title a').innerText = items[num].title; //제목
            rankTxt.querySelector('.book_author').innerText = items[num].author; //저자
            rankTxt.querySelector('.book_price').innerHTML = `<span>${items[num].discount}</span><b>${items[num].price}</b>원`; //가격
            rankTxt.querySelector('.book_ex').innerText = items[num].contents; //텍스트
            if(num == targetNum) num = 0;
            if(num < targetNum){
                targetItem[num].classList.add('on');
                num++;
                //e.target.classList.add('on');
                
            }
            
            console.log('click : ',num);
        });
    }   
}




/* 콘텐츠 탭메뉴 */
const listTapHandler = (items,obj) => {
    const objKeyList = Object.keys(items); //키 값 배열로 나열
    const objValList = Object.values(items); //콘텐츠 값 배열로 나열
    const conTab = document.querySelector(obj.tab); //탭메뉴
    const conList = document.querySelector(obj.list); //아이템리스트
    const conTabItems = conTab.querySelectorAll(conTab.children[0].nodeName.toLowerCase()); //탭메뉴의 자식태그를 불러옴

    //탭의 자식태그에 data-title 속성 추가
    for(let p=0; p<conTabItems.length; p++){
        conTabItems[p].setAttribute('data-title',objKeyList[p]);
    }

    //탭을 클릭 하면
    conTab.addEventListener('click',(e)=>{
        const targetData = e.target.getAttribute('data-title'); //클릭한 탭의 data-title 불러오기
        if(e.target.id !== obj.tab.replace(/# | ./,'') && e.target.nodeName.toLowerCase() === conTab.children[0].nodeName.toLowerCase()){ //클릭한 탭의 id값이 일치할 경우
            if(e.target.classList.contains('on')) return;
            for(let i=0; i<conTab.childElementCount; i++){ //탭의 자식 개수만큼 반복
                conTab.children[i].classList.remove('on'); //탭의 자식 모두의 클래스에서 on 삭제
            }
            e.target.classList.add('on'); //탭의 자식 중 클릭된 자식 태그에만 클래스 on 추가

            var itemListType = objValList[0]; //페이지 로드시 처음으로 보일 리스트 설정
            /* item 개수만큼 data-title에 값 선언 */
            for(let w=0; w<objKeyList.length; w++){ 
                conList.children[w].querySelector('img').src = itemListType[w].src; //이미지 변경
                if(targetData === objKeyList[w]){ //클릭된 탭의 data-title과 아이템의 키 값이 일치할 때만 
                    itemListType = objValList[w]; //화면에 구현될 아이템 리스트를 받아온 오브젝트 리스트로 설정
                }
            }
            for(let o=0; o<conList.childElementCount; o++){
                conList.children[o].querySelector('img').src = itemListType[o].src; //이미지 변경
                conList.children[o].querySelector('p a').innerText = itemListType[o].title; //제목 변경
                conList.children[o].querySelector('p').nextElementSibling.innerText = itemListType[o].author; //저자 변경
            }
        }
        
    });
}




/* 스와이프 { */
function swiperHandler(obj){
    //next, prev 버튼 높이값을 콘텐츠에 따라 설정
    const objParent = document.querySelector(obj.ele).parentElement;
    const objEle = document.querySelector(obj.ele).querySelector('.swiperBoxIn');
    const objTitle = objParent.querySelector('.title');
    const objNext = objParent.querySelector(obj.next);
    const objPrev = objParent.querySelector(obj.prev);
    objNext.style.top = `${(objParent.clientHeight/2) - (objNext.clientHeight/2) + objTitle.clientHeight}px`;
    objPrev.style.top = `${(objParent.clientHeight/2) - (objPrev.clientHeight/2) + objTitle.clientHeight}px`;
    obj.slidesPerView = obj.slidesPerView || 4;
    obj.spaceBetween = obj.spaceBetween || 0;
    obj.slidesOffsetAfter = obj.slidesOffsetAfter || 0;
    console.log(obj.ele, " : ", obj);
    new Swiper(objEle, {
        grabCursor: true,
        /* 네비게이션 : 다음, 이전 버튼 효과 */
        navigation: {
            nextEl: `.swiper-button-next${obj.next}`,
            prevEl: `.swiper-button-prev${obj.prev}`,
        },
        slidesPerView: obj.slidesPerView, //한 화면에 보일 슬라이드 개수
        spaceBetween: obj.spaceBetween, //다음 슬라이드와의 간격
        slidesOffsetAfter : obj.slidesOffsetAfter,
        loop: true, //루프
        autoplay: {
            delay: obj.delay, //전환 대기시간
            disableOnInteraction: false, //마우스 오버 시 슬라이드 정지 = true[기본값]
            pauseOnMouseEnter:true,
        },
    });
    
}
