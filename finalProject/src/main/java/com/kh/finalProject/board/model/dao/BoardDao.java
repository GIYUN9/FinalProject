package com.kh.finalProject.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.finalProject.board.model.vo.Board;

import com.kh.finalProject.common.vo.Attachment;

import com.kh.finalProject.common.vo.Notice;

import com.kh.finalProject.common.vo.PageInfo;

@Repository
public class BoardDao {
	
	public ArrayList<Board> selectCommList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.selectCommList", null, rowBounds);
	}
	
	public ArrayList<Board> helpselectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.helpselectList", null, rowBounds);
	}
	
	
	public int insertBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("boardMapper.insertBoard", b);
	}

	public int updateBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("boardMapper.updateBoard", b);
	}
	
	public int deleteBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.deleteBoard", boardNo);
	}
	
	public Board selectBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.selectBoard", boardNo);
	}
	

	public int helpAttachment(SqlSessionTemplate sqlSession, Attachment at) {
		return sqlSession.selectOne("boardMapper.helpAttachment", at);
	}
	
	public int helpselect(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.helpselect");
	}

	public int selectCommListCount(SqlSessionTemplate sqlSeesion) {
		return sqlSeesion.selectOne("boardMapper.selectCommListCount");
	}
	
	public ArrayList<Notice> noticeList(SqlSessionTemplate sqlSeesion){
		return (ArrayList)sqlSeesion.selectList("boardMapper.noticeList");
	}
	
	public int insertNotice(SqlSessionTemplate sqlSeesion, Notice n) {
		return sqlSeesion.insert("boardMapper.insertNotice", n);

	}
	
	public int seleteHelpListCount(SqlSessionTemplate sqlSeesion) {
		return sqlSeesion.selectOne("boardMapper.seleteHelpListCount");
	}
}
