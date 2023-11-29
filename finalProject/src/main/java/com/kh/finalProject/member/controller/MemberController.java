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
}
