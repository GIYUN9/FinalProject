package com.kh.finalProject.board.model.service;

import java.util.ArrayList;

import com.kh.finalProject.board.model.vo.Board;
import com.kh.finalProject.common.vo.PageInfo;


public interface BoardService {
	
	//게시판 도와줄게요 조회
	ArrayList<Board> selectList(PageInfo pi);
	
	//게시글 상세조회
	Board selectBoard(int boardNo);
	
	//도와줄게요 게시판 등록
	int insertBoard(Board b);
	
	//도와줄게요 게시판 수정
	int updateBoard(Board b);
	
	//도와줄게요 게시판 삭제
	int deleteBoard(int boardNo);
}
