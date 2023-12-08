package com.kh.finalProject.member.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.finalProject.member.model.service.MemberService;
import com.kh.finalProject.member.model.vo.Member;
import com.kh.finalProject.member.model.vo.Professional;

@Controller
public class MemberController {

	// 마이페이지 및 회원 정보 (아마추어 and 전문가 등등 )관련 컨트롤러로 사용할 class
	
	@Autowired
	private MemberService memberService;
	
//	@Autowired
//	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	//멤버 마이페이지 불러오는 컨트롤러
	@RequestMapping(value = "/userInfo.me")
	public ModelAndView userInfo(Member m, ModelAndView mv, HttpSession session){
		m = (Member)session.getAttribute("loginUser");
		Member loginUser = memberService.userInfo(m);
		session.setAttribute("loginUser", loginUser);
		mv.setViewName("myPage/userInfo");
		return mv;
	}
	//멤버 마이페이지 수정하는 컨트롤러
	@RequestMapping(value = "/updateUserInfo.me")
	public String updateUserInfo(Member m, HttpSession session) {
		m = (Member)session.getAttribute("loginUser");
		int result = memberService.updateUserInfo(m);
		
		return "redirect:/userInfo.me";
	}
	
	//멤버 전문가페이지 불러오는 컨트롤러
	@RequestMapping(value = "/proInfo.me")
	public String proInfo(Member m, HttpSession session){
		m = (Member)session.getAttribute("loginUser");
		Member loginUser = memberService.userInfo(m);
		session.setAttribute("loginUser", loginUser);
		
		Professional p = memberService.proInfo(m);
		session.setAttribute("p", p);
		
		return "myPage/proInfo";
	}
	
	//멤버 전문가페이지에서 수정하고 다시 페이지를 부르는 컨트롤러
	@RequestMapping(value = "/updateProInfo.me")
	public String updateProInfo(Member m, Professional p, HttpSession session) {
		m = (Member)session.getAttribute("loginUser");
		int result = memberService.updateProInfo(m);
		
		// 전문 분야 및 상세 분야 보류 여기에 추가해야함
		// int result = memberService.updateUserInfo(m, p); ~~~
		return "redirect:/proInfo.me";
	}
	
	//비밀번경페이지 호출 컨트롤러
	@RequestMapping(value = "/changePwd.me")
	public String changePwd(){
		return "myPage/changePwd";
	}
	
	//비밀번호 변경하는 컨트롤러
	@RequestMapping(value = "/updatePwd.me")
	public String updatePwd(Member m, String newPwd, HttpSession session){
		m = (Member)session.getAttribute("loginUser");
		m.setMemberPwd(newPwd);
		int result = memberService.updatePwd(m);
		
		return "redirect:/changePwd.me";
		//성공 얼럴트창 띄우기
		//프론트에서 기존비밀번호가 일치하고 새로운 비밀번호 확인까지 일치한다면 버튼 클릭가능하기만들기
	}
	
	//화면 전환용
	@RequestMapping(value = "/deleteForm.me")
	public String deleteForm(){
		return "myPage/deleteForm";
	}
	
	//회원탈퇴 컨트롤러 (업데이트)
	@RequestMapping(value = "/delete.me")
	public String deleteMember(Member m, HttpSession session) {
		m = (Member)session.getAttribute("loginUser");
		int result = memberService.deleteMember(m);
		
		if(result > 0) {
			session.removeAttribute("loginUser");
			return "common/main";
		} else {
			return "redirect:/";
		}
	}
	/*
	@RequestMapping(value = "/schedule.me")
	public String schedule(Model model){
		ArrayList<Member> sList = memberService.scheduleList();
		model.addAttribute("sList",sList);
		return "myPage/schedule";
	}
	*/
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
	
	

	@RequestMapping(value = "/insert.me")
	public String insertMember(Member m, HttpSession session, Model model) {
		// bcryptPasswordEncoder 사용? => 일단 보류
		System.out.println("zzzzzzzzzzzzzz" + m);
		System.out.println("zzzzzzzzzzzzzz" + m);
	
		int result = memberService.insertMember(m); // 아이디로만 멤버객체 가져오기
		
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 회원가입이 완료되었습니다.");
			return "redirect:/";
		} else {
			model.addAttribute("errorMsg", "회원가입 실패");
			return "common/errorPage";
		}
	}
	
	
	
	@RequestMapping(value = "/login.me")
	public ModelAndView loginMember(Member m, ModelAndView mv, HttpSession session) {
		
		Member loginUser = memberService.loginMember(m);
		
		//!(m.getMemberPwd().equals(loginUser.getMemberPwd()))
		if(loginUser == null){//로그인 실패경우 (조건이 정확한지 확인받기)
			mv.addObject("errorMsg", "로그인 실패"); 
			mv.setViewName("common/errorPage");//경로가 정확히 이게 맞을까?
			System.out.println(loginUser);
		}else {
			session.setAttribute("loginUser", loginUser);
			System.out.println("로그인 성공!");
			mv.setViewName("redirect:/");
			System.out.println(loginUser);
		}
		return mv;
	}
	
	@RequestMapping("/logout.me")
	public ModelAndView logoutMember(ModelAndView mv, HttpSession session) {
		session.removeAttribute("loginUser");
		
		mv.setViewName("redirect:/");
		
		return mv;
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
