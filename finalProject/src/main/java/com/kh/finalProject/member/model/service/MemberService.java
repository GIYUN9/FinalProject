package com.kh.finalProject.member.model.service;

import java.util.ArrayList;

import com.kh.finalProject.common.vo.Schedule;
import com.kh.finalProject.mail.EmailCheck;
import com.kh.finalProject.member.model.vo.Member;
import com.kh.finalProject.member.model.vo.Professional;

public interface MemberService {
	
	// 회원가입 서비스 (insert)
	int insertMember(Member m);
	
	//아이디 중복체크
	Member emailCheck(Member m);
	
	// 회원정보 불러오는 서비스(select)
	Member userInfo(Member m);
	
	// 회원정보 수정 서비스(update)
	int updateUserInfo(Member m);
	
	//로그인 서비스
	Member loginMember(Member m);
	
	// 회원정보들고 프로페셔널 테이블 조회 서비스(select)
	Professional proInfo(Member m);
	
	// 회원정보 + 자기소개INTRO컬럼 들고 수정 서비스
	// 전문 분야 및 상세 분야 추가해야함(보류상태)
	int updateProInfo(Member m);
	
	//비밀번호 변경 서비스
	int updatePwd(Member m);
	
	//회원탈퇴 서비스
	int deleteMember(Member m);
	
	//프로필 이미지 변경
	int updateUserImg(String memberNo, String filePath);
	
	//일정관리  나한테 들어온 리스트
	ArrayList<Schedule> scheduleList(Schedule s);
	

	//일정관리 내가 보낸 리스트
	ArrayList<Schedule> scheduleSendList(Schedule s);
	
	//보낸 요청 취소하기
	int requestCancel(Schedule s);

	//멤버 목록(회원 관리)
	ArrayList<Member> memberList(Member m);

	ArrayList<Member> searchMember(String searchText);
	
	//난수 저장용
	int insertEmailRandomNo(EmailCheck e);
	
	//난수 불러오기
	EmailCheck checkRandomNo(EmailCheck e);
	
	//
	EmailCheck checkCreateDate(EmailCheck e);
}
