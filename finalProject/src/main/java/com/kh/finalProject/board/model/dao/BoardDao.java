package com.kh.finalProject.board.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.finalProject.board.model.vo.Board;

public class BoardDao {

//	public ArrayList<Board> selectList() {
//		
//	}
	
	public int insertBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("boardMapper.insertBoard", b);
	}
}
