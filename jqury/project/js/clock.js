function getClock(){
    const clock=document.querySelector('#clock');
    const date=new Date() // 데이트 객체(날짜, 시간 사용가능)
//    if(date.getHours()<10){
//        let temp1='0'+date.getHours().toString();
//        let temp2='0'+String(date.getHours());
//        console.log(temp1,typeof(temp1));
//        console.log(temp2,typeof(temp2));
//    }
    const hour=String(date.getHours()).padStart(2,'0');//getHours() = 현재시간 반환
    const minute=String(date.getMinutes()).padStart(2,'0');//getMinutes() = 현재분 반환
    const seconds=String(date.getSeconds()).padStart(2,'0');//padStart(a,b) = 문자열을 최소 a만큼 표시 없는부분 b로 대체
    // console.log(hour,minute,seconds);
    clock.innerHTML=`${hour}:${minute}:${seconds}`
}
getClock();
setInterval(getClock,1000);