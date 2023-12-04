package com.kh.finalProject.member.model.service;

import com.kh.finalProject.member.model.vo.Member;

public interface MemberService {
	
	// 회원가입 서비스 (insert)
	int insertMember(Member m);
	
	//아이디 중복체크
	int emailCheck(String checkEmail);
	
	// 회원정보 불러오는 서비스(select)
	Member userInfo(String memberEmail);
}
