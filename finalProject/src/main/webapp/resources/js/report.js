		function from() {
		location.href = "reportList.rp";
		const reqAreas = document.querySelectorAll('.req-outer1');
		reqAreas.forEach(reqArea => reqArea.style.display = "none");
		
		const reqAreas1 = document.querySelectorAll('.req-outer');
		reqAreas1.forEach(reqArea1 => reqArea1.style.display = "flex");

		const pBtn = document.querySelectorAll('.p-btn');
			pBtn.forEach(element => {
				element.style.background = 'transparent';
			});

		const pBtn1 = document.querySelectorAll('.p-btn1');
			pBtn1.forEach(element => {
				element.style.background = 'rgba(255, 255, 255, 0.22)';
			});
	}

	function send() {
			const reqAreas = document.querySelectorAll('.req-outer');
			reqAreas.forEach(reqArea => reqArea.style.display = "none");
			
			const reqAreas1 = document.querySelectorAll('.req-outer1');
			reqAreas1.forEach(reqArea1 => reqArea1.style.display = "flex");

			const pBtn = document.querySelectorAll('.p-btn');
			pBtn.forEach(element => {
				element.style.background = 'transparent';
			});

			const pBtn1 = document.querySelectorAll('.p-btn1');
			pBtn1.forEach(element => {
				element.style.background = 'rgba(255, 255, 255, 0.22)';
			});
	}

		function reportDetail(res){
			console.log(res)
			const reportInfo = document.querySelector('.req-user-info');
			reportInfo.style.display = "none";

			const reportNum = document.querySelector('.view'+res);
			console.log(reportNum)
			reportNum.style.display = "flex";
		}
		
		function reportPostBtn(num) {
			if(num === 1) {
				$("#form").attr('action','reportComment.rp');
			}
			$("#form").submit();
		}


		function send2(){
			const reportInfo = document.querySelector('.req-user-info');
			reportInfo.style.display = "none";

			const tee = document.querySelector('.tee');
			tee.style.display = "flex";
		}