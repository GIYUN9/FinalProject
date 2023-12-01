package com.kh.finalProject.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.finalProject.member.model.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
//	@Autowired
//	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping(value = "/userInfo.me")
	public String userInfo(){
		//화면 전환용 임시 데이터는 없는상태
		return "myPage/userInfo";
	}
	@RequestMapping(value = "/proInfo.me")
	public String proInfo(){
		//화면 전환용 임시 데이터는 없는상태
		return "myPage/proInfo";
	}
	@RequestMapping(value = "/changePwd.me")
	public String changePwd(){
		//화면 전환용 임시 데이터는 없는상태
		return "myPage/changePwd";
	}
	@RequestMapping(value = "/deleteForm.me")
	public String deleteForm(){
		//화면 전환용 임시 데이터는 없는상태
		return "myPage/deleteForm";
	}
	@RequestMapping(value = "/schedule.me")
	public String schedule(){
		//화면 전환용 임시 데이터는 없는상태
		return "myPage/schedule";
	}
	@RequestMapping(value = "/ask.me")
	public String ask(){
		//화면 전환용 임시 데이터는 없는상태
		return "myPage/ask";
	}
	
	@RequestMapping(value = "/ask1.me")
	public String ask1(){
		//화면 전환용 임시 데이터는 없는상태
		return "myPage/ask1";
	}
	
	@RequestMapping(value = "/ask2.me")
	public String ask2(){
		//화면 전환용 임시 데이터는 없는상태
		return "myPage/ask2";
	}
}

/*
 * spring_work 실습에 사용했던 파일이름저장 정책 참고용
 * public String saveFile(MultipartFile upfile, HttpSession session, String path) {
		//파일명 수정 후 서버 업로드 시키기("음악스트리밍.png" => 20231109102712345.png)
		//년월일시분초 + 랜덤숫자 5개 + 확장자
		
		//원래 파일명
		String originName = upfile.getOriginalFilename();
		
		//시간정보(년월일시분초)
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		//랜덤숫자 5자리
		int ranNum = (int)((Math.random() * 90000) + 10000);
		
		//확장자
		String ext = originName.substring(originName.lastIndexOf("."));
		
		String changeName = currentTime + ranNum + ext;
		
		//첨부파일 저장할 폴더의 물리적인 경우
		String savePath = session.getServletContext().getRealPath(path);
		
		try {
			upfile.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
	}
 */
