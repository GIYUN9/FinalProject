package com.kh.finalProject.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalProject.common.vo.Schedule;
import com.kh.finalProject.member.model.dao.MemberDao;
import com.kh.finalProject.member.model.vo.Member;
import com.kh.finalProject.member.model.vo.Professional;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertMember(Member m) {
		return memberDao.insertMember(sqlSession, m);
	}
	
	@Override
	public Member loginMember(Member m) {
		return memberDao.loginMember(sqlSession, m);
	}

	@Override
	public Member userInfo(Member m) {
		return memberDao.userInfo(sqlSession, m);
	}

	@Override
	public int updateUserInfo(Member m) {
		return memberDao.updateUserInfo(sqlSession, m);
	}

	@Override
	public Professional proInfo(Member m) {
		return memberDao.proInfo(sqlSession, m);
	}

	@Override
	public int updateProInfo(Member m) {
		return memberDao.updateProInfo(sqlSession, m);
	} // 전문 분야 및 상세 분야 추가해야함(보류상태)

	@Override
	public int updatePwd(Member m) {
		return memberDao.updatePwd(sqlSession, m);
	}
	
	@Override
	public Member emailCheck(Member m) {
		return memberDao.emailCheck(sqlSession, m);
	}

	@Override
	public int deleteMember(Member m) {
		return memberDao.deleteMember(sqlSession, m);
	}

    @Override
    public ArrayList<Schedule> scheduleList() {
        ArrayList<Schedule> scheduleList = memberDao.scheduleList(sqlSession);
        return scheduleList;
    }


	@Override
	public int updateUserImg(String memberNo, String filePath) {
		return memberDao.updateUserImg(sqlSession, memberNo, filePath);
	}
}
