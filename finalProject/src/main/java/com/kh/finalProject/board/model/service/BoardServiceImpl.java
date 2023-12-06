package com.kh.finalProject.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalProject.board.model.dao.BoardDao;
import com.kh.finalProject.board.model.vo.Board;

import com.kh.finalProject.common.vo.Attachment;

import com.kh.finalProject.common.vo.Notice;

import com.kh.finalProject.common.vo.PageInfo;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private BoardDao boardDao;

	
	@Override
	//게시판 도와줄게요 조회
	public ArrayList<Board> helpselectList(PageInfo pi) {
		return boardDao.helpselectList(sqlSession, pi);
	}


	//게시글 등록
	@Override
	//도와줄게요 게시판 등록
	public int insertBoard(Board b) {
		return boardDao.insertBoard(sqlSession, b);
	}

	//게시글 수정
	@Override
	//도와줄게요 게시판 수정
	public int updateBoard(Board b) {
		return boardDao.updateBoard(sqlSession, b);
	}

	//게시글 삭제
	@Override
	//도와줄게요 게시판 삭제
	public int deleteBoard(int boardNo) {
		return boardDao.deleteBoard(sqlSession, boardNo);
	}

	//게시글 상세조회
	@Override
	public Board selectBoard(int boardNo) {
		return boardDao.selectBoard(sqlSession, boardNo);
	}

	//게시글 사진첨부
	@Override
	public int helpAttachment(Attachment at) {
		return boardDao.helpAttachment(sqlSession, at);
	}

	@Override
	public int helpselect() {
		return boardDao.helpselect(sqlSession);
	}

	//게시글 전체 갯수 count(*)조회
	@Override
	public int selectCommListCount() {
		return boardDao.selectCommListCount(sqlSession);

	}
	
	//게시글 리스트 조회
	@Override
	public ArrayList<Board> selectCommList(PageInfo pi) {
		return boardDao.selectCommList(sqlSession, pi);
	}

	//공지사항 리스트조회
	@Override
	public ArrayList<Notice> noticeList() {
		return boardDao.noticeList(sqlSession);
	}

	@Override
	public int insertNotice(Notice n) {
		return boardDao.insertNotice(sqlSession, n);
	}
}
