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
