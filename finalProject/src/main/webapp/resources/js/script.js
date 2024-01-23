const initSlider = () => {
    const imageList = document.querySelector(".slider-wrapper .image-list");
    const slideButtons = document.querySelectorAll(".slider-wrapper .slide-button");
    const maxScrollLeft = imageList.scrollWidth - imageList.clientWidth;
    const sliderScrollbar = document.querySelector(".container .slider-scrollbar");
    const scrollbarThumb = sliderScrollbar.querySelector(".scrollbar-thumb");
    
    // Handle scrollbar thumb drag
    scrollbarThumb.addEventListener("mousedown", (e) =>{
        const startX = e.clientX;
        const thumbPosition = scrollbarThumb.offsetLeft;

        //Update thumb postion on mouse move
        const handleMouseMove = (e) =>{
            const deltaX = e.clientX - startX;
            const newThumbPosition = thumbPosition + deltaX;
            const maxThumbPosition = sliderScrollbar.getBoundingClientRect().width - scrollbarThumb.offsetWidth;

            const boundedPosition = Math.max(0, Math.min(maxThumbPosition, newThumbPosition ));
            const scrollPosition = (boundedPosition / maxThumbPosition) * maxScrollLeft;

            scrollbarThumb.style.left = `${boundedPosition}px`;
            imageList.scrollLeft = scrollPosition;
        }

        // Remove event listeners on mouse up
        const handleMouseup = () =>{
            document.removeEventListener("mousemove", handleMouseMove);
            document.removeEventListener("mouseup", handleMouseup);
        }
        //Add event listeners for drag interaction
        document.addEventListener("mousemove", handleMouseMove);
        document.addEventListener("mouseup", handleMouseup);
    })


    // Slide image according to the slide btn clicks
    slideButtons.forEach(button => {
        button.addEventListener("click", ()=> {
            const direction = button.id ==="prev-slide" ? -1 : 1;
            const scrollAmount = imageList.clientWidth * direction;
            imageList.scrollBy({ left:scrollAmount, behavior: "smooth"});
        });
    });

    const handleSlideButtons = () => {
        slideButtons[0].style.display = imageList.scrollLeft >=  maxScrollLeft? "none" : "block";
        slideButtons[1].style.display = imageList.scrollLeft <= 0 ? "none" : "block";
        
    }

    // Update scrollbar thum position based on image scrol
    const updateScrollThumbPosition = () => {
        const scrollPosition = imageList.scrollLeft;
        const thumbPosition = (scrollPosition / maxScrollLeft)* (sliderScrollbar.clientWidth - scrollbarThumb.offsetWidth)
        scrollbarThumb.style.left = `${thumbPosition}px`;
    }

    imageList.addEventListener("scroll", () => {
        handleSlideButtons();
        updateScrollThumbPosition();
    } )
}

window.addEventListener("load", initSlider);


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
