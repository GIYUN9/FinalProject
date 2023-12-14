package com.kh.finalProject.member.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.finalProject.common.vo.Schedule;
import com.kh.finalProject.member.model.service.MemberService;
import com.kh.finalProject.member.model.vo.Member;
import com.kh.finalProject.member.model.vo.Professional;

@Controller
public class MemberController {

	// 마이페이지 및 회원 정보 (아마추어 and 전문가 등등 )관련 컨트롤러로 사용할 class
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
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
	public String updatePwd(Member m, String newPwd, String originMemberPwd, HttpSession session, Model model){
		Member loginUser = memberService.loginMember(m);
		
		if(bcryptPasswordEncoder.matches(originMemberPwd, loginUser.getMemberPwd())) {
			String encPwd = bcryptPasswordEncoder.encode(newPwd); // 새로 입력한 비밀번호 암호화
			m.setMemberPwd(encPwd); // 암호화된 비밀번호 객체에 넣어주기
			int result = memberService.updatePwd(m); // 수정
			session.setAttribute("alertMsg", "비밀번호를 성공적으로 변경하였습니다.");
			return "forward:/changePwd.me";
		} else {
			model.addAttribute("alertMsg", "비밀번호 변경에 실패하였습니다.\n 기존비밀번호가 일치하지 않습니다.");
			return "forward:/changePwd.me";
		}
		
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
	
	//관리자 회원탈퇴 컨트롤러 (업데이트)
	@RequestMapping(value = "/adDelete.me")
	public String adminDeleteMem(String memberNoList, HttpSession session) {
	    Member m = (Member) session.getAttribute("loginUser");
		int result = memberService.adminDeleteMem(memberNoList);
			return "redirect:/";
	}
	
	//스케줄 컨트롤러(로그인한 유저의 정보를 포함하여)
	@RequestMapping(value = "/schedule.me")
	public String schedule(Schedule s, Model model) {
	    ArrayList<Schedule> sList = memberService.scheduleList(s);
	    model.addAttribute("sList", sList);
	    ArrayList<Schedule> sList2 = memberService.scheduleSendList(s);
	    model.addAttribute("sList2", sList2);
	    return "myPage/schedule";
	}
//	
//	@RequestMapping(value = "/schedule.me")
//	public String schedule(){
//		//화면 전환용 임시 데이터는 없는상태
//		return "myPage/schedule";
//	}
	
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
	
	@RequestMapping(value = "/careMem.me")
	public String careMem(Member m, Model model) {
	    ArrayList<Member> mList = memberService.memberList(m);
	    System.out.println(mList);
	    model.addAttribute("mList", mList);
	    return "myPage/careMember";
	}
	
		
	@RequestMapping(value = "/viewReport.me")
	public String viewReport(){
		//화면 전환용 임시 데이터는 없는상태
		return "myPage/viewReport";
	}
	
	@RequestMapping(value = "/insert.me")
	public String insertMember(Member m, HttpSession session, Model model) {
		// bcryptPasswordEncoder 사용? => 일단 보류

		//암호화 작업
		String encPwd = bcryptPasswordEncoder.encode(m.getMemberPwd());
		//암호화한 비밀번호를 객체에 적용
		m.setMemberPwd(encPwd);
		int result = memberService.insertMember(m); // 아이디로만 멤버객체 가져오기
		
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 회원가입이 완료되었습니다.");
			return "redirect:/";
		} else {
			model.addAttribute("errorMsg", "회원가입 실패");
			return "common/errorPage";
		}
	}
	
	
	//로그인 컨트롤러
	@RequestMapping(value = "/login.me")
	public ModelAndView loginMember(Member m, ModelAndView mv, HttpSession session) {
		Member loginUser = memberService.loginMember(m);
		System.out.println(loginUser);
		
		//!(m.getMemberPwd().equals(loginUser.getMemberPwd()))
		if(loginUser == null || !bcryptPasswordEncoder.matches(m.getMemberPwd(), loginUser.getMemberPwd())){//로그인 실패경우 (조건이 정확한지 확인받기)
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
	
	@RequestMapping(value = "/updateUserImg.me")
	public String updateUserImg(String memberNo, MultipartFile upfile, HttpSession session, Model model) {
		if(!upfile.getOriginalFilename().equals("")) {
			
			String changeName = saveFile(upfile, session, "resources/memberProfileImg/");
			
			String filePath = "resources/memberProfileImg/" + changeName;
			
			int result = memberService.updateUserImg(memberNo, filePath);
			
			return "redirect:/userInfo.me";
		} else {
			model.addAttribute("errorMsg", "프로필 변경 실패");
			return "common/errorPage";
		}
		
	}
	
	private String saveFile(MultipartFile upfile, HttpSession session, String path) {
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
	
	//보낸요청삭제
	//여기 페이지 리다이렉트했을때 값 넘어가게 수정해야함
	@RequestMapping(value = "requestCancel.bo")
	public String requestCancel(Schedule s, Model model, HttpSession session) {
		int result = memberService.requestCancel(s);
		Member loginUser = (Member)session.getAttribute("loginUser");
		int tmp = loginUser.getMemberNo();
		
		return "redirect:/schedule.me?toMemberNo="+ tmp;
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
