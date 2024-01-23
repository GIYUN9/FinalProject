
        function emailSend() {
            // 여기에 이메일 인증을 처리하는 코드 작성 필요
            // 이메일 인증 API를 사용 -> 그에 맞는 함수를 호출하거나 필요한 동작을 수행
        }

        function checkSelectAll()  {
        	  // 전체 체크박스
        	  const checkboxes 
        	    = document.querySelectorAll('input[name="category"]');
        	  // 선택된 체크박스
        	  const checked 
        	    = document.querySelectorAll('input[name="category"]:checked');
        	  // select all 체크박스
        	  const selectAll 
        	    = document.querySelector('input[name="selectall"]');
        	  
        	  if(checkboxes.length === checked.length)  {
        	    selectAll.checked = true;
        	  }else {
        	    selectAll.checked = false;
        	  }

        }
        
        function selectAll(selectAll)  {
        	  const checkboxes = document.getElementsByName('category');
        	  checkboxes.forEach((checkbox) => {
        	    checkbox.checked = selectAll.checked
        	  })
        }
		
        $(document).ready(function(){
            $('.dropdown-toggle').dropdown();
        });

        function checkEmail(){
            console.log("온키업");
            let memberEmail = document.getElementById("memberEmail");
            let checkResultSpan = document.getElementById("checkResult");
            let exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

            if(exptext.test(memberEmail.value) == false){
                checkResultSpan.innerHTML="<font color = pink>이메일좀 똑바로 입력해라</font>";
            }
        }

        

        //회원가입 버튼 시 조건 확인  
        // function join() {

        //     console.log("조인함수 호출");
        //     const joinForm = document.joinForm; 
        //     const memberEmail = joinForm.memberEmail;

        //     //이메일 아무것도 입력 안 했을 경우
        //     if(memberEmail.value == ""){
        //         alert("아이디를 입력하세요");
        //         memberEmail.focus();
        //         return false;
        //     }

        //     // 이메일 조건확인
            // var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
        //     if(exptext.test(memberEmail.value) == false){
        //         alert("Email식이 올바르지 않습니다.");
        //         memberEmail.focus();
        //         return false;
        //     }
        
        //     const memberPwd = joinForm.memberPwd;
        //     const memberPwd2 = joinForm.memberPwd2;

        //      //비밀번호 입력 없을 경우
        //     if(memberPwd.value == ""){
        //         alert("비밀번호를 입력하세요");
        //         memberPwd.focus();
        //         return false;
        //     }

        //     //비밀번호 제약조건
        //     if(memberPwd.value.length < 8){
		// 		alert("비밀번호 8자리 이상!");
		// 		memberPwd.focus();
		// 		return false;
        //     }

        //     //비밀번호 공백 있나 확인
        //     if(memberPwd.value.search(" ") != -1){
        //         alert("비밀번호는 공백을 포함할 수 없습니다.!");
        //         memberPwd.focus();
        //         return false;
        //     }

        //     //비밀번호 확인
        //     if(memberPwd2.value == ""){
        //         alert("비밀번호를 확인해주세요");
        //         memberPwd2.focus();
        //         return false;
        //     }

        //     //비밀번호 확인이 틀렸을 경우
        //     if(memberPwd.value != memberPwd2.value){
        //         alert("비밀번호를  다시 확인해주세요 일치하지 않습니다.");
        //         memberPwd.focus();
        //         return false;
        //     }

        //     //이름입력 안 했을 경우
        //     const memberName = joinForm.memberName;
        //     if(memberName.value == ""){
        //         alert("이름을 입력하세요");
        //         memberName.focus();
        //         return false;
        //     } 

        //     const phone = joinForm.phone;
        //     if(phone.value == ""){
        //         alert("휴대폰 번호를 입력하세요");
        //         phone.focus();
        //         return false;
        //     }
        //     return true;        
        // }

        //로그인 시 제약조건
        function loginCheck(){
            const loginForm = document.loginForm;
            const memberEmail = loginForm.memberEmail;

             //이메일 아무것도 입력 안 했을 경우
             if(memberEmail.value == ""){
                alert("이메일을 입력하세요");
                memberEmail.focus();
                return false;
            }

            // 이메일 조건확인
            var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
            if(exptext.test(memberEmail.value) == false){
                alert("Email 방식이 올바르지 않습니다.");
                memberEmail.focus();
                return false;
            }

            const memberPwd = loginForm.memberPwd;
            
             //비밀번호 입력 없을 경우
            if(memberPwd.value == ""){
                alert("비밀번호를 입력하세요");
                memberPwd.focus();
                return false;
            }

            	//비밀번호 제약조건
          //if(memberPwd.value.length < 8){
        //        alert("비밀번호 8자리 이상!");
          //      memberPwd.focus();
           //     return false;
          //  }

        }
        $(document).ready(function(){
            // #myModal3이 표시될 때
            $('#myModal3').on('show.bs.modal', function () {
                // #myModal의 스타일을 변경
                $('#myModal').css('display', 'none');
            });

            // #myModal3이 숨겨질 때
            $('#myModal3').on('hidden.bs.modal', function () {
                // #myModal의 스타일을 변경
                $('#myModal').css('display', 'block');
            });

            // #myModal1이 표시될 때
            $('#myModal1').on('show.bs.modal', function () {
                // #myModal의 스타일을 변경
                $('#myModal').css('display', 'none');
            });

            // #myModal1이 숨겨질 때
            $('#myModal1').on('hidden.bs.modal', function () {
                // #myModal의 스타일을 변경
                $('#myModal').css('display', 'block');
            });
        });
        
        function aa() {
            $('#modal').modal('hide');
        }

		function logout() {
			location.href = "logout.me"
		}
		function myPage() {
			location.href = "userInfo.me"
		}
		function needHelp() {
			location.href = "helpmeList.bo"
		}
		function helpU() {
			location.href = "helpList.bo"
		}
		function btn(){
		    alert('로그인 후 사용 가능합니다.');
		}
		
		function find(){
            const keyWord = document.querySelector("input[name='searchKey']").value;
            console.log(keyWord);
            location.href = "find.bo?keyWord=" + keyWord;
        }

        function loginPlz(){
            alert('로그인 후 사용 가능합니다.');
        }
        
        function emailSendNo(){
        	const numberBtn = document.querySelector(".number-btn");
            numberBtn.style.display = "flex";

            $.ajax({
                url: "emailSendNo.me",
                type: "POST",
                data: {
                    authEmail : document.querySelector('#memberEmail').value
                },
                success: function(res) {
                    console.log('이메일 인증번호 발송 성공')
                    const memberEmailInput = document.querySelector(".en-input3");
                    // input 태그를 리드온리로 설정
                    memberEmailInput.readOnly = true;
                    
                },
                error: function() {
                    console.log("이메일 인증번호 발송 실패");
                }
            });
        }

        function randomNumberCheck(){
            $.ajax({
                url: "randomNumberCheck.me",
                type: "POST",
                data: {
                    checkNo : document.querySelector('#checkNo').value,
                    authEmail : document.querySelector('#memberEmail').value
                },
                success: function(res) {
                    var data = JSON.parse(res);
                    if (data.data === "NNNNY") {
                        alert("인증이 완료되었습니다.");
                        document.getElementById("checkNo").readOnly = true;
                        document.getElementById("memPwd1").readOnly = false;
                        document.getElementById("memPwd2").readOnly = false;
                    }
                },
                error: function() {
                    console.log("ERROR");
                }
            });
        }
        let nnn;
        function phoneCheck() {
			const phone = document.querySelector('#phone').value
            document.querySelector('#phone').readOnly = true;
            document.querySelector('#sendBtn').disabled = true;
            const view = document.querySelector('.view-check')
            view.style.display = "flex";
            console.log('눌림')
			$.ajax({
                type: "POST",
                url: "phoneCheck.me",
                data: {
                    "phone" : phone
                },
                success: function(res){
                    alert('입력하신 전화번호로 인증번호가 발송되었습니다.')
                    nnn = res;
                    console.log(res)
                },
                error: function(){
                    console.log("ERROR");
                }
            })
		}
        
        function numberCheck(){
            const number = document.querySelector('#numCheck').value
            if(number === nnn){
                alert("인증이 완료되었습니다.");
                document.querySelector('#numCheck').readOnly = true;
                document.querySelector('#checkBtn').disabled = true;
                document.querySelector('#submitBtn').disabled = false;
                submitBtn
            } else{
                alert("인증번호가 올바르지 않습니다.");
            }
        }