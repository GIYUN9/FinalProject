package com.kh.finalProject.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.finalProject.member.model.vo.Member;
import com.kh.finalProject.member.model.vo.Professional;

@Repository
public class MemberDao {
	
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
		
	}
	
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	public Member emailCheck(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.emailCheck", m);
	}
	

	public Member userInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.userInfo", m);
	}
	
	public int updateUserInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateUserInfo", m);
	}
	
	public Professional proInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.proInfo", m);
	}
	
	public int updateProInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateProInfo", m);
	}
	
	public int updatePwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updatePwd", m);
	}
	
	public int deleteMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.deleteMember", m);
	}
/*
	public ArrayList<Member> scheduleList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("memberMapper.scheduleList");
	}
*/	
}

