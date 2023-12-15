package com.kh.finalProject.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalProject.board.model.dao.BoardDao;
import com.kh.finalProject.board.model.vo.Board;
import com.kh.finalProject.board.model.vo.Reply;

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
	public int helpinsertBoard(Board b) {
		return boardDao.helpinsertBoard(sqlSession, b);
	}

	//게시글 수정
	@Override
	//도와줄게요 게시판 수정
	public int helpUpdateBoard(Board b) {
		return boardDao.helpUpdateBoard(sqlSession, b);
	}

	//게시글 삭제
	@Override
	//도와줄게요 게시판 삭제
	public int helpDeleteBoard(int boardNo) {
		return boardDao.helpDeleteBoard(sqlSession, boardNo);
	}

	//게시글 상세조회
	@Override
	public Board selectBoard(int boardNo) {
		return boardDao.selectBoard(sqlSession, boardNo);
	}

	//게시글 사진첨부
	// 도와줄게요 사진 첨부
	@Override
	public int helpAttachment(Attachment at) {
		return boardDao.helpAttachment(sqlSession, at);
	}
	
	//게시글 총 페이지
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

	//공지사항 등록
	@Override
	public int insertNotice(Notice n) {
		return boardDao.insertNotice(sqlSession, n);
	}

	//도와줄게요 게시판 리스트 count(*)조회
	@Override
	public int seleteHelpListCount() {
		return boardDao.seleteHelpListCount(sqlSession);
	}

	//공지사항 삭제
	@Override
	public int deleteNotice(Notice n) {
		return boardDao.deleteNotice(sqlSession, n);
	}

	//게시글 궁금해요 갯수 count(*)조회
	@Override
	public int selectCuriousListCount() {
		return boardDao.selectCuriousListCount(sqlSession);
	}

	//게시글 궁금해요 리스트
	@Override
	public ArrayList<Board> selectCuriousList(PageInfo pi) {
		return boardDao.selectCuriousList(sqlSession, pi);
	}
	
	//게시글 얼마예요 count(*)조회
	@Override
	public int selectMuchListCount() {
		return boardDao.selectMuchListCount(sqlSession);
	}
	
	//게시글 얼마예요 리스트
	@Override
	public ArrayList<Board> selectMuchList(PageInfo pi) {
		return boardDao.selectMuchList(sqlSession, pi);
	}
	
	//도와줄게요 보드번호 가져오는 중간 쿼리
	@Override
	public Board helpselectOne(Board b) {
		return boardDao.helpselectOne(sqlSession ,b);
	}
	
	//게시글 함께해요 count(*)조회
	@Override
	public int selectTogetherListCount() {
		return boardDao.selectTogetherListCount(sqlSession);
	}

	//게시글 함께해요 리스트
	@Override
	public ArrayList<Board> selectTogetherList(PageInfo pi) {
		return boardDao.selectTogetherList(sqlSession, pi);
	}

	//커뮤니티 게시글 쓰기 등록 
	@Override
	public int insertCommboard(Board b) {
		return boardDao.insertCommboard(sqlSession, b);
	}

	@Override
	public ArrayList<Notice> noticeListTwo() {
		return boardDao.noticeListTwo(sqlSession);
	}

	@Override
	public ArrayList<Board> findBoardList1(String keyWord) {
		return boardDao.findBoardList1(sqlSession, keyWord);
	}

	@Override
	public ArrayList<Board> findBoardList2(String keyWord) {
		return boardDao.findBoardList2(sqlSession, keyWord);
	}

	@Override
	public ArrayList<Board> findBoardList3(String keyWord) {
		return boardDao.findBoardList3(sqlSession, keyWord);
	}

	@Override
	public ArrayList<Board> findBoardList4(String keyWord) {
		return boardDao.findBoardList4(sqlSession, keyWord);
	}

	@Override
	public ArrayList<Board> findBoardList5(String keyWord) {
		return boardDao.findBoardList5(sqlSession, keyWord);

	}
	
	//도와주세요 게시글 전체 갯수 count(*)조회
	@Override
	public int seleteHelpmeListCount() {
		return boardDao.seleteHelpmeListCount(sqlSession);
	}
	
	//도와주세요 게시판 조회
	@Override
	public ArrayList<Board> helpmeselectList(PageInfo pi) {
		return boardDao.helpmeselectList(sqlSession, pi);
	}
	
	//도와주세요 게시글 등록
	@Override
	public int helpmeInsertBoard(Board b) {
		return boardDao.helpmeInsertBoard(sqlSession, b);
	}

	//도와주세요 사진 첨부
	@Override
	public int helpmeAttachment(Attachment at) {
		return boardDao.helpmeAttachment(sqlSession, at);
	}
	
	//도와주세요 게시글 수정
	@Override
	public int helpmeUpdateBoard(Board b) {
		return boardDao.helpmeUpdateBoard(sqlSession, b);
	}
	
	//도와주세요 게시글 삭제
	@Override
	public int helpmeDeleteBoard(int boardNo) {
		return boardDao.helpmeDeleteBoard(sqlSession, boardNo);
	}
	
	//도와주세요 보드번호 중간 쿼리
	@Override
	public Board helpmeselectOne(Board b) {
		return boardDao.helpmeselectOne(sqlSession ,b);
	}

	//도와줄게요 게시글 상세조회
	@Override
	public Board helpSelectBoard(int boardNo) {
		return boardDao.helpSelectBoard(sqlSession, boardNo);
	}
	
	//도와주세요 게시글 상세조회
	@Override
	public Board helpmeSelectBoard(int boardNo) {
		return boardDao.helpmeSelectBoard(sqlSession, boardNo);
	}
	
	//얼마예요 궁금해요 등 게시글 상세조회
	@Override
	public Board selectCommBoard(int boardNo) {
		return boardDao.selectCommBoard(sqlSession, boardNo);
	}
	
	@Override
	public int updateCommBoard(Board b) {
		return boardDao.updateCommBoard(sqlSession, b);
	}
	
	@Override
	public int deleteCommBoard(int boardNo) {
		return boardDao.deleteCommBoard(sqlSession, boardNo);
	}
	
	@Override
	public int insertReply(Reply r) {
		return boardDao.insertReply(sqlSession, r);
	}
	
	@Override
	public ArrayList<Reply> selectReplyList(Board b){		
		return boardDao.selectReplyList(sqlSession, b);

	}
	
	@Override
	public int deleteReply(int replyNo) {
		return boardDao.deleteReply(sqlSession, replyNo);
	}
	
}
