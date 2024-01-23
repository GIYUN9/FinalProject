package com.kh.finalProject.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.finalProject.common.vo.Reason;
import com.kh.finalProject.common.vo.Report;
import com.kh.finalProject.common.vo.Schedule;
import com.kh.finalProject.mail.EmailCheck;
import com.kh.finalProject.member.model.vo.Member;
import com.kh.finalProject.member.model.vo.Skill;
import com.kh.finalProject.pay.model.vo.Pay;

@Repository
public class MemberDao {
	
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}
	
	public int emailYNCheck(SqlSessionTemplate sqlSession, String memberEmail) {
		return sqlSession.selectOne("memberMapper.emailYNCheck", memberEmail);
	}
	
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	public Member emailCheck(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.emailCheck", m);
	}
	
	public Member emailPhoneCheck(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.emailPhoneCheck", m);
	}
	
	public Member userInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.userInfo", m);
	}
	
	public int updateUserInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateUserInfo", m);
	}
	
	public ArrayList<Skill> skillInfo(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("memberMapper.skillInfo");
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
	public int updateUserPwd(SqlSessionTemplate sqlSession, Member user) {
		return sqlSession.update("memberMapper.updateUserPwd", user);

	}
	public int adminDeleteMem(SqlSessionTemplate sqlSession, int memberNo) {
		return sqlSession.update("memberMapper.adminDeleteMem", memberNo);
	}
	
	public int insertEmailRandomNo(SqlSessionTemplate sqlSession, EmailCheck e) {
		return sqlSession.insert("memberMapper.insertEmailRandomNo", e);
	}
	
	public EmailCheck checkRandomNo(SqlSessionTemplate sqlSession, EmailCheck e) {
		return sqlSession.selectOne("memberMapper.checkRandomNo", e);
	}
	
	public EmailCheck checkCreateDate(SqlSessionTemplate sqlSession, EmailCheck e) {
		return sqlSession.selectOne("memberMapper.checkCreateDate", e);
	}
	
	public Member naverIdcheck(SqlSessionTemplate sqlSession, String memberEmail) {
		return sqlSession.selectOne("memberMapper.naverIdcheck", memberEmail);
	}
	
	public int naverEnrollInsert(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.naverEnrollInsert", m);
	}
	
	public int insertPay(SqlSessionTemplate sqlSession, Pay pay) {
		return sqlSession.insert("memberMapper.insertPay", pay);
	}
	
	public int insertAmount(SqlSessionTemplate sqlSession, Pay pay) {
		return sqlSession.update("memberMapper.insertAmount", pay);
	}
	
	public int insertReason(SqlSessionTemplate sqlSession, Reason r) {
		return sqlSession.insert("memberMapper.insertReason", r);
	}
	
	public int updatePhone(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updatePhone", m);
	}
	
	public ArrayList<Report> myReportList(SqlSessionTemplate sqlSession, Member m){
		return (ArrayList)sqlSession.selectList("memberMapper.myReportList", m);
	}
	
	public ArrayList<Report> endMyReportList(SqlSessionTemplate sqlSession, Member m){
		return (ArrayList)sqlSession.selectList("memberMapper.endMyReportList", m);
	}
	
	public int insertReport(SqlSessionTemplate sqlSession, Report r) {
		return sqlSession.insert("memberMapper.insertReport", r);
	}
}

