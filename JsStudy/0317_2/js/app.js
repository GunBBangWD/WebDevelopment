$(function(){ // $(document).ready() 와 동일한 역할 문서가 완성되고 실행
    $('.item').on({ // on() 메서드
        'dragstart':function(e){
            //제이쿼리의 이벤트객체에서 dom 이벤트 처리가 필요할때 originalEvent 사용
            e.originalEvent.dataTransfer.setData('text/plain',e.target.id)
            setTimeout(()=>{ //특정 시간 후에 1회 실행 메서드
                $(e.target).hide()
                // e.target.classList.add('hide') //display:none 속성있는 클래스 추가
            },1)//0.0001초
        }
    })
})
const boxes = $('.box')
boxes.each((index,box)=>{
    $(function(){
        $(box).on({
            'dragenter': e=>{
                e.preventDefault()
                e.target.classList.add('drag-over')
            },
            'dragleave': e=>{
                e.target.classList.remove('drag-over')
            },
            'drop': e=>{
                e.preventDefault()
                const id = e.originalEvent.dataTransfer.getData('text/plain')
                const dragItem=$('#'+id)
                e.target.appendChild(dragItem[0])
                e.target.classList.remove('drag-over')
                dragItem.show()
                // dragItem.removeClass('hide')
            },
            'dragover':e=>{
                e.preventDefault()
                e.target.classList.add('drag-over')
            }
        })
    })
})
