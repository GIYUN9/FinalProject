package com.kh.finalProject.member.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.kh.finalProject.common.vo.Reason;
import com.kh.finalProject.common.vo.Report;
import com.kh.finalProject.common.vo.Schedule;
import com.kh.finalProject.member.model.service.MemberService;
import com.kh.finalProject.member.model.vo.Member;
import com.kh.finalProject.member.model.vo.Skill;
import com.kh.finalProject.pay.model.vo.Pay;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;
import security.Key;

@Controller
public class MemberController {

	// 마이페이지 및 회원 정보 (아마추어 and 전문가 등등 )관련 컨트롤러로 사용할 class
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	//이메일 중복확인 컨트롤러
	@RequestMapping(value="/emailYNCheck.me")
	@ResponseBody
	public Map<String, String> emailYNCheck(HttpServletRequest request, HttpServletResponse response) {
	    String memberEmail = request.getParameter("memberEmail");
	
	    int checkResult = memberService.emailYNCheck(memberEmail);
	  
	    
	    Map<String, String> result = new HashMap<>();
	    
	    if (checkResult == 0) {
	        result.put("status", "ok");
	    } else {
	        result.put("status", "fail");
	    }
	    return result;
	}
	
	//멤버 마이페이지 불러오는 컨트롤러
	@RequestMapping(value = "/userInfo.me")
	public ModelAndView userInfo(Member m, ModelAndView mv, String pg_token, HttpSession session){
		if(pg_token != null) {
			Pay pay = (Pay)session.getAttribute("pay");
			int result = memberService.insertPay(pay);
			
			if(result > 0) {
				memberService.insertAmount(pay);
				session.setAttribute("alertMsg", "결제하신 point : "+pay.getPrice()+" 가 정상적으로 충전되었습니다.");
			}
		}
		m = (Member)session.getAttribute("loginUser");
		Member loginUser = memberService.userInfo(m);
		session.setAttribute("loginUser", loginUser);
		mv.setViewName("myPage/userInfo");
		return mv;
	}
	//멤버 마이페이지 수정하는 컨트롤러
	@RequestMapping(value = "/updateUserInfo.me")
	public String updateUserInfo(Member m, HttpSession session) {
		int result = memberService.updateUserInfo(m);
		
		return "redirect:/userInfo.me";
	}
	
	//멤버 전문가페이지 불러오는 컨트롤러
	@RequestMapping(value = "/proInfo.me")
	public String proInfo(Member m, HttpSession session){
		m = (Member)session.getAttribute("loginUser");
		Member loginUser = memberService.userInfo(m);
		session.setAttribute("loginUser", loginUser);
		
		ArrayList<Skill> s = memberService.skillInfo();
		session.setAttribute("s", s);
		
		return "myPage/proInfo";
	}
	
	//멤버 전문가페이지에서 수정하고 다시 페이지를 부르는 컨트롤러
	@RequestMapping(value = "/updateProInfo.me")
	public String updateProInfo(Member m, HttpSession session) {
		System.out.println(m);
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
			return "redirect:/";
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
	public String deleteMember(Member m, String reason, HttpSession session) {
		m = (Member)session.getAttribute("loginUser");
		int result = memberService.deleteMember(m);
		
		if(result > 0) {
			Reason r = new Reason();
			r.setMemberNo(m.getMemberNo());
			r.setReaContent(reason);
			memberService.insertReason(r);
			session.removeAttribute("loginUser");
			session.setAttribute("alertMsg", "지금까지 품앗이를 이용해 주셔서 감사합니다.");
			return "common/main";
		} else {
			return "redirect:/";
		}
	}
	
	//관리자 회원탈퇴 컨트롤러 (업데이트)
	@RequestMapping(value = "/adDelete.me")
	public String adminDeleteMem(@RequestParam("memberNos") String memberNos, HttpSession session) {
		//memberNos = 받아온 값들
		//memberNoArray = 받아온 값의 String을 , 단위로 끊어서 배열로 넣음
		//memNos = String []인 memberNoArrays에서 꺼내서 하나씩 memNos에 담음
	    String[] memberNoArray = memberNos.split(",");

	    int result = 0;
	    for (String memNos : memberNoArray) {
	        int memberNo = Integer.parseInt(memNos.trim()); // trim()을 사용하여 앞뒤 공백 제거
	    	result += memberService.adminDeleteMem(memberNo);
	    }
		
		return "redirect:/";
	}
	
	//스케줄 컨트롤러(로그인한 유저의 정보를 포함하여)
	@RequestMapping(value = "/schedule.me", method = RequestMethod.GET)
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
	
	//사용자가 문의내역버튼 클릭시 자신이 보낸 문의 내역 불러오기
	@RequestMapping(value = "/ask3.me")
	public String ask3(HttpSession session){
		Member m = (Member)session.getAttribute("loginUser");
		ArrayList<Report> rlist = memberService.myReportList(m);
		session.setAttribute("rlist", rlist);
		
		ArrayList<Report> endrlist = memberService.endMyReportList(m);
		session.setAttribute("endrlist", endrlist);
		return "myPage/ask3";
	}
	
	@RequestMapping(value = "/careMem.me")
	public String careMem(Member m, Model model) {
	    ArrayList<Member> mList = memberService.memberList(m);
	    System.out.println(mList);
	    model.addAttribute("mList", mList);
	    return "myPage/careMember";
	}
	
	@RequestMapping(value = "/insert.me")
	public String insertMember(Member m, HttpSession session, Model model) {

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
	
	//이메일에서 링크 클릭했을 경우 페이지 이동해주는 기능
	@RequestMapping(value = "/pwdChangePage.me")
	public String pwdChangePage(){
		return "myPage/changePwdEmail";
	}
	
	//이메일에서 링크타고 와서 이메일과 비밀번호 입력해서 둘의 일치여부 확인 후 비밀번호 변경하는 기능
	@RequestMapping(value = "pwdChangeEmail.me")
	public String pwdChangeEmail(Member m, HttpSession session, Model model) {
		
		String encPwd = bcryptPasswordEncoder.encode((m.getMemberPwd()));
		m.setMemberPwd(encPwd);
		
		Member user = memberService.emailPhoneCheck(m);
		
		System.out.println("유저 : " + user);
		
		if(user == null) {
			System.out.println("if문 : " +user);
			model.addAttribute("errorMsg", "이메일과 휴대전화 번호가 일치하지 않습니다.");
			return "common/errorPage";
		}else {		
			System.out.println("if문 : " +user);
			 memberService.updateUserPwd(m);
			 return "redirect:/";
		}
	}
	
	//로그인이후 토큰을 얻기 위한 페이지로 이동하는 컨트롤러 네이버
	@RequestMapping(value = "callback")
	public String loginNaver(HttpSession session) {
		return "common/callback";
	}
	
    private static String get(String apiUrl, Map<String, String> requestHeaders){
        HttpURLConnection con = connect(apiUrl);
        try {
            con.setRequestMethod("GET");
            for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
                con.setRequestProperty(header.getKey(), header.getValue());
            }


            int responseCode = con.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
                return readBody(con.getInputStream());
            } else { // 에러 발생
                return readBody(con.getErrorStream());
            }
        } catch (IOException e) {
            throw new RuntimeException("API 요청과 응답 실패", e);
        } finally {
            con.disconnect();
        }
    }
    
    private static HttpURLConnection connect(String apiUrl){
        try {
            URL url = new URL(apiUrl);
            return (HttpURLConnection)url.openConnection();
        } catch (MalformedURLException e) {
            throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
        } catch (IOException e) {
            throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
        }
    }


    private static String readBody(InputStream body){
        InputStreamReader streamReader = new InputStreamReader(body);


        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
            StringBuilder responseBody = new StringBuilder();


            String line;
            while ((line = lineReader.readLine()) != null) {
                responseBody.append(line);
            }


            return responseBody.toString();
        } catch (IOException e) {
            throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
        }
    }

	
	//네이버로그인 처리하는 컨트롤러
	@RequestMapping(value = "naverLogin")
	public String naverLogin(HttpSession session, Model model) {
		String result = (String)session.getAttribute("res");
		JsonObject totalObj = JsonParser.parseString(result).getAsJsonObject();
		
		// 회원 정보 받기
	      
	      String token = totalObj.get("access_token").getAsString(); // 액세스토큰
	      String header = "Bearer "+token;
	      
	      String apiURL = "https://openapi.naver.com/v1/nid/me";
	      
	      Map<String, String> requestHeaders = new HashMap<String, String>();
	      requestHeaders.put("Authorization", header);
	      
	      String responseBody = get(apiURL,requestHeaders);
	      
	      JsonObject memberInfo =  JsonParser.parseString(responseBody).getAsJsonObject();
	      JsonObject resObj = memberInfo.getAsJsonObject("response");
	      
	      Member isMember = memberService.naverIdcheck(resObj.get("email").getAsString());
	      
	      if(isMember != null) {	         
	         session.setAttribute("loginUser", isMember);
	         return "common/main";
	      } else {
	    	  
	    	  Member m = new Member();
	    	  m.setMemberEmail(resObj.get("email").getAsString());
	    	  m.setMemberName(resObj.get("name").getAsString());
	    	  m.setPhone(resObj.get("mobile").getAsString());
	    	  session.setAttribute("naverId", m);
		      return "common/naverEnrollFrom";
	      }
	}
	
	//네이버 정보 + 품앗이 필요 정보 포함한 회원가입 insert컨트롤러
	@RequestMapping(value = "naverEnroll.me")
	public String naverEnrollInsert(Member m, HttpSession session) {
		int result = memberService.naverEnrollInsert(m);
		
		session.setAttribute("alertMsg", "네이버 아이디로 회원가입이 완료되었습니다. \n 로그인을 다시 진행해 주세요.");
		return "common/main";
	}
	
	
	//휴대폰 인증 컨트롤러 -> ajax를 통해 사용자의 핸드폰번호가 문자열로 들어온다 "-"기호 빼주고 난수 생성하여 문자 보내는 객체호출 하고 난수 리턴
	@RequestMapping(value = "phoneCheck.me")
	@ResponseBody
    public String sendSMS(String phone) {

		//6자리 랜덤 난수 int형으로 만들어 String으로 변환
		int random = (int)(Math.random()*899999+100000);
		String randomNo = Integer.toString(random);
		
		//"-"포함한 문자열로들어온 전화번호 -제외하고 넘겨주기
		phone = phone.replaceAll("[^0-9]", "");
		
        System.out.println("수신자 번호 : " + phone);
        System.out.println("인증번호 : " + randomNo);
        certifiedPhoneNumber(phone,randomNo);
        return randomNo;
    }
	public void certifiedPhoneNumber(String phoneNumber, String cerNum) {
	
        String api_key = Key.API_KEY;
        String api_secret = Key.API_SECRET;
        Message coolsms = new Message(api_key, api_secret);

        // 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", phoneNumber);    // 수신전화번호
		params.put("from", Key.API_ADMIN_PHONE_NUMBER);    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
		params.put("type", "SMS");
		params.put("text", "품앗이 : 인증번호는" + "["+cerNum+"]" + "입니다.");
		params.put("app_version", "test app 1.2"); // application name and version
		
        try {
            JSONObject obj = (JSONObject) coolsms.send(params);
            System.out.println(obj.toString());
        } catch (CoolsmsException e) {
            System.out.println(e.getMessage());
            System.out.println(e.getCode());
        }
	
	}
	
	//카카오페이 결제페이지로 이동
	@RequestMapping(value = "amountChargePage.me")
	public String amountChargePage() {
		return "myPage/amountChargePage";
	}
	
	@RequestMapping(value = "kakaopay.me")
	@ResponseBody
	public String kakaopay(Pay pay, HttpSession session) {
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection httpUrlConnection = (HttpURLConnection)url.openConnection();
			httpUrlConnection.setRequestMethod("POST");
			httpUrlConnection.setRequestProperty("Authorization", "KakaoAK "+Key.KAKAO_ADMIN_KEY);
			httpUrlConnection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			httpUrlConnection.setDoOutput(true); //doinput은 기본값 트루상태
			String param ="cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=Poom At yee Point&quantity=1&total_amount="+pay.getPrice()+"&tax_free_amount=0&approval_url=http://localhost:5555/finalProject/userInfo.me&fail_url=http://localhost:5555/finalProject/userInfo.me&cancel_url=http://localhost:5555/finalProject/userInfo.me";
			OutputStream ops = httpUrlConnection.getOutputStream();
			DataOutputStream dops = new DataOutputStream(ops);
			dops.writeBytes(param);
			dops.close(); // 닫기 => dops.flush(); //비우기-> 보내기
			
			int result1 = httpUrlConnection.getResponseCode();
			
			InputStream ips;
			
			if(result1 == 200) {
				ips = httpUrlConnection.getInputStream();
			}else {
				ips = httpUrlConnection.getErrorStream();
			}
			InputStreamReader readIps = new InputStreamReader(ips);
			BufferedReader bufferedReader = new BufferedReader(readIps);
			
			session.setAttribute("pay", pay);
			return bufferedReader.readLine();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "{\"result\":\"NO\"}";
	}
	
	@RequestMapping(value = "payApproval.me")
	public String payApproval(String pg_token, Pay pay) {
		return "common/payApproval";
	}
	
	//전화번호 추가(재인증)화면 전환 컨트롤러
	@RequestMapping(value = "newPhoneEnroll.me")
	public String newPhoneEnroll() {
		System.out.println("일하고있니?스프링아");
		return "myPage/newPhoneEnroll";
	}
	
	@RequestMapping(value = "updatePhone.me")
	public String updatePhone(Member m, HttpSession session) {
		int result = memberService.updatePhone(m);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "전화번호가 성공적으로 변경되었습니다.");
		} else {
			session.setAttribute("alertMsg", "전화번호 변경 실패.");
		}
		return "redirect:/userInfo.me";
	}
	
	//신고하기(문의)등록 페이지
	@RequestMapping(value = "reportEnrollFrom.me")
	public String reportEnrollFrom() {
		return "myPage/reportEnrollFrom";
	}
	
	//신고하기 글 등록
	@RequestMapping(value = "insertReport.me")
	public String insertReport(Report r, HttpSession session) {
		System.out.println("dddd : "+r);
		int result = memberService.insertReport(r);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "신고(문의)가 성공적으로 등록되었습니다.");
		}else {
			session.setAttribute("alertMsg", "등록 실패");
		}
		
		return "redirect:/ask3.me";
	}
}
