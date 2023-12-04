package com.kh.finalProject.member.model.service;

import com.kh.finalProject.member.model.vo.Member;
import com.kh.finalProject.member.model.vo.Professional;

public interface MemberService {
	
	// 회원가입 서비스 (insert)
	int insertMember(Member m);
	
	// 회원정보 불러오는 서비스(select)
	Member userInfo(Member m);
	
	// 회원정보 수정 서비스(update)
	int updateUserInfo(Member m);
	
	// 회원정보들고 프로페셔널 테이블 조회 서비스(select)
	Professional proInfo(Member m);
	
	// 회원정보 + 자기소개INTRO컬럼 들고 수정 서비스
	// 전문 분야 및 상세 분야 추가해야함(보류상태)
	int updateProInfo(Member m);
	
	//비밀번호 변경 서비스
	int updatePwd(Member m);
}
