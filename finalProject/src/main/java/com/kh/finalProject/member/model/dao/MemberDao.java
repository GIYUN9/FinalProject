package com.kh.finalProject.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.finalProject.member.model.vo.Member;

@Repository
public class MemberDao {

	
	public Member userInfo(SqlSessionTemplate sqlSession, String memberEmail) {
		return sqlSession.selectOne("memberMapper.userInfo", memberEmail);
	}
}
