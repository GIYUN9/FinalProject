//requestBoardList.jsp 날짜순, 조회순 스크립트

function handleSelectionChange1() {
  const selectedValue = document.getElementById("category-item").value;

  if (selectedValue === "date") {
    location.href = "helpmeDateList"; // 날짜순을 선택한 경우
  } else if (selectedValue === "check") {
    location.href = "helpmeReferenceList"; // 조회순을 선택한 경우
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


//도와주세요 카테고리 별 클릭했을 시 Controller로 이동! 

function categorymeList(element){
	 const categoryNo = element.getAttribute('data-category-no');
	 
	 console.log(categoryNo);
	 
	 location.href = "helpmeCategoryList.bo?categoryNo=" + categoryNo;
	
}

document.addEventListener('DOMContentLoaded', function () {
        const itemsPerPage = 5;
        const scrollArea = document.querySelector('.scroll-area');
        const navItems = document.querySelectorAll('.nav-item');
        let currentIndex = 0;

        // 좌측 버튼 클릭 시
        document.getElementById('leftButton').addEventListener('click', function () {
            if (currentIndex > 0) {
                currentIndex -= itemsPerPage;
                updateSlider();
            }
        });

        // 우측 버튼 클릭 시
        document.getElementById('rightButton').addEventListener('click', function () {
            if (currentIndex < navItems.length - itemsPerPage) {
                currentIndex += itemsPerPage;
                updateSlider();
            }
        });

        // 슬라이더 업데이트 함수
        function updateSlider() {
            const translateValue = -currentIndex * navItems[0].offsetWidth;
            scrollArea.style.transform = 'translateX(' + translateValue + 'px)';
            console.log('Slider updated. Current Index: ', currentIndex);
        }
    });