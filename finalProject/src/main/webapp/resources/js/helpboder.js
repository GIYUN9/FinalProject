//helpBoardList.jsp의 날짜순, 조회순 클릭시 실행되는 스크립트
const select = document.querySelector('#category-item');
select.addEventListener('change', () => {
    if(select.value == 'date'){
    	console.log('date 날짜순')
    	location.href = "helpDateList";
    } else{

    	console.log('count = check')
    	location.href = "helpReferenceList";
    }
});

//helpDetail.jsp 수정,삭제 버튼 클릭 실행되는 스크립트
function postBtn(num) {
    if(num === 1) {
        $("#form").attr('action', 'helpUpdateForm.bo');
    } else {
        $("#form").attr('action', 'helpDelete.bo');
    }
    $("#form").submit();
} 	

function resetList() {
    location.href = "helpList.bo";
}
