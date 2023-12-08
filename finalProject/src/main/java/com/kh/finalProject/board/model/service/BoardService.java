package com.kh.finalProject.board.model.service;

import java.util.ArrayList;

import com.kh.finalProject.board.model.vo.Board;

import com.kh.finalProject.common.vo.Attachment;

import com.kh.finalProject.common.vo.Notice;

import com.kh.finalProject.common.vo.PageInfo;


public interface BoardService {
	
	//게시글 총 페이지
	int helpselect();
	
	//게시판 도와줄게요 리스트조회
	ArrayList<Board> helpselectList(PageInfo pi);
	

	//커뮤니티 전체보기 조회
	ArrayList<Board> selectCommList(PageInfo pi);
	
	//게시글 상세조회
	Board selectBoard(int boardNo);
	
	//도와줄게요 게시판 등록
	int helpinsertBoard(Board b);
	
	//도와줄게요 사진 첨부
	int helpAttachment(Attachment at);
	
	//도와줄게요 게시판 수정
	int updateBoard(Board b);
	
	//도와줄게요 게시판 삭제
	int deleteBoard(int boardNo);
	
	//커뮤니티 게시글 수(조회)
	int selectCommListCount();
	
	//공지사항 리스트(조회)
	ArrayList<Notice> noticeList();
	
	//공지사항 등록
	int insertNotice(Notice n);
	
	//도와줄께요 게시판 리스트 count(*)조회
	int seleteHelpListCount();

	//공지사항 삭제
	int deleteNotice(Notice n);
	
	//궁금해요 게시글 수(조회)
	int selectCuriousListCount();
	
	//궁금해요 리스트(조회)
	ArrayList<Board> selectCuriousList(PageInfo pi);
	
	//얼마예요 게시글 수 (조회)
	int selectMuchListCount();
	
	//얼마예요 리스트 (조회)
	ArrayList<Board> selectMuchList(PageInfo pi);

	//도와줄게요 보드번호 가져오는 중간 쿼리
	Board helpselectOne(Board b);
}
