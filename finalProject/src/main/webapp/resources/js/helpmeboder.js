//requestBoardList.jsp 날짜순, 조회순 스크립트
const select = document.querySelector('#category-item');
	
	select.addEventListener('change', () => {
		if(select.value == 'date') {
			console.log('날짜순')
			location.href = "helpmeDateList";
		} else {
			console.log('조회순')
			location.href = "helpmeReferenceList";
		}
	});

//requestHelpmeDetail.jsp 수정,삭제 버튼 스크립트
function postBtn(num) {
    if(num === 1) {
        $("#form").attr('action', 'helpmeUpdateForm.bo');
    } else {
        $("#form").attr('action', 'helpmeDelete.bo');
    }
    $("#form").submit();
} 	

function resetList() {
    location.href = "helpmeList.bo";
}