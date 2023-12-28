//helpBoardList.jsp의 날짜순, 조회순 클릭시 실행되는 스크립트

function handleSelectionChange() {
  const selectedValue = document.getElementById("category-item").value;

  if (selectedValue === "date") {
    location.href = "helpDateList"; // 날짜순을 선택한 경우
  } else if (selectedValue === "check") {
    location.href = "helpReferenceList"; // 조회순을 선택한 경우
  }
}

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
