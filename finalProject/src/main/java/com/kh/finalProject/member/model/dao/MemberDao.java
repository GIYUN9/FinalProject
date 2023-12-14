package com.kh.finalProject.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.finalProject.common.vo.Schedule;
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

	public ArrayList<Schedule> scheduleList(SqlSessionTemplate sqlSession, Schedule s) {
		return (ArrayList)sqlSession.selectList("memberMapper.scheduleList", s);
	}
	
	public int updateUserImg(SqlSessionTemplate sqlSession, String memberNo, String filePath) {
		Map<String, String> tmp = new HashMap();
		tmp.put("memberNo", memberNo);
		tmp.put("filePath", filePath);
		return sqlSession.update("memberMapper.updateUserImg", tmp);
	}
	

	public ArrayList<Schedule> scheduleSendList(SqlSessionTemplate sqlSession, Schedule s){
		return (ArrayList)sqlSession.selectList("memberMapper.scheduleSendList", s);
	}
	
	public int requestCancel(SqlSessionTemplate sqlSession, Schedule s) {
		return sqlSession.update("memberMapper.requestCancel", s);
  }
	public ArrayList<Member> memberList(SqlSessionTemplate sqlSession, Member m) {
		return (ArrayList)sqlSession.selectList("memberMapper.viewAllMem", m);

	}
	public ArrayList<Member> searchMember(SqlSessionTemplate sqlSession, String searchText) {
		Map<String, String> parameters = new HashMap<>();
        parameters.put("searchText", searchText);
        return (ArrayList)sqlSession.selectList("memberMapper.searchMem", parameters);

	}
}

