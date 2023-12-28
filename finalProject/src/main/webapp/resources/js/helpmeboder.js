//requestBoardList.jsp 날짜순, 조회순 스크립트

function handleSelectionChange() {
  const selectedValue = document.getElementById("category-item").value;

  if (selectedValue === "date") {
    location.href = "helpDateList"; // 날짜순을 선택한 경우
  } else if (selectedValue === "check") {
    location.href = "helpReferenceList"; // 조회순을 선택한 경우
  }
}

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