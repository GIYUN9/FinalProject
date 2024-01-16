package com.kh.finalProject.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalProject.board.model.dao.BoardDao;
import com.kh.finalProject.board.model.vo.Board;
import com.kh.finalProject.board.model.vo.Likey;
import com.kh.finalProject.board.model.vo.ReLikey;
import com.kh.finalProject.board.model.vo.Reply;

import com.kh.finalProject.common.vo.Attachment;
import com.kh.finalProject.common.vo.Category;
import com.kh.finalProject.common.vo.Notice;
import com.kh.finalProject.common.vo.PageInfo;
import com.kh.finalProject.common.vo.Report;

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
	
	//도와줄게요 카테고리별 조회
	public ArrayList<Board> helpCategoryList(PageInfo pi, int categoryNo) {
		return boardDao.helpCategoryList(sqlSession, pi, categoryNo);
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
	
	//도와줄게요 게시판 리스트 count(*)조회
	@Override
	public int seleteHelpListCount() {
		return boardDao.seleteHelpListCount(sqlSession);
	}
	
	//도와줄게요 카테고리별 리스트 count 조회
	@Override
	public int helpCategoryCount(int categoryNo) {
		
		return boardDao.helpCategoryCount(sqlSession, categoryNo);
	}
	
	//도와줄게요 보드번호 가져오는 중간 쿼리
	@Override
	public Board helpselectOne(Board b) {
		return boardDao.helpselectOne(sqlSession ,b);
	}
	
	//도와줄게요 게시글 상세조회
	@Override
	public Board helpSelectBoard(int boardNo) {
		return boardDao.helpSelectBoard(sqlSession, boardNo);
	}
	
	//도와줄게요 날짜순
	@Override
	public ArrayList<Board> helpDateCheck(Board b, PageInfo pi) {
		return boardDao.helpDateCheck(sqlSession, b, pi);
	}

	//도와줄게요 날짜순 count(*)
	@Override
	public int helpDateCheckCount() {
		return boardDao.helpDateCheckCount(sqlSession);
	}
	
	//도와줄게요 조회순 리스트
	@Override
	public ArrayList<Board> helpReference(Board b, PageInfo pi) {
		return boardDao.helpReference(sqlSession, b, pi);
	}
	
	//도와줄게요 조회순 증가 update
	@Override
	public int helpincreaseCount(int boardNo) {
		return boardDao.helpincreaseCount(sqlSession, boardNo);
	}

	//도와줄게요 조회순 count(*)
	@Override
	public int helpReferenceCount() {
		return boardDao.helpReferenceCount(sqlSession);
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
	
	//도와주세요 카테고리별 리스트 카운트(*)조회
	@Override
	public int helpmeCategoryCount(int categoryNo) {
		return boardDao.helpmeCategoryCount(sqlSession, categoryNo);
	}
	
	//도와주세요 게시판 조회
	@Override
	public ArrayList<Board> helpmeselectList(PageInfo pi) {
		return boardDao.helpmeselectList(sqlSession, pi);
	}
	
	//도와주세요 카테고리 별 조회
	@Override
	public ArrayList<Board> helpmeCategoryList(PageInfo pi, int categoryNo) {
		return boardDao.helpmeCategoryList(sqlSession, pi, categoryNo);
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
	
	
	//도와주세요 게시글 상세조회
	@Override
	public Board helpmeSelectBoard(int boardNo) {
		return boardDao.helpmeSelectBoard(sqlSession, boardNo);
	}
	
	//도와주세요 날짜순 리스트
	@Override
	public ArrayList<Board> helpmeDateCheck(Board b, PageInfo pi) {
		return boardDao.helpmeDateCheck(sqlSession, b, pi);
	}

	//도와주세요 날짜순 count(*)
	@Override
	public int helpmeDateCheckCount() {
		return boardDao.helpmeDateCheckCount(sqlSession);
	}

	//도와주세요 조회순 리스트
	@Override
	public ArrayList<Board> helpmeReference(Board b, PageInfo pi) {
		return boardDao.helpmeReference(sqlSession, b, pi);
	}

	//도와주세요 조회순 count(*)
	@Override
	public int helpmeReferenceCount() {
		return boardDao.helpmeReferenceCount(sqlSession);
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



	@Override
	public int insertLikey(Likey l) {
		return boardDao.insertLikey(sqlSession, l);
	}
	
	@Override
	public int updateYLikey(Likey l) {
		return boardDao.updateYLikey(sqlSession, l);
	}
	@Override
	public Board selectLikeyCount(Likey l) {
		return boardDao.selectLikeyCount(sqlSession, l);
	}
	
	
	@Override
	public int updateNLikey(Likey l) {
		return boardDao.updateNLikey(sqlSession, l);
	}
	
	@Override
	public Likey selectLikey(Likey l) {
		return boardDao.selectLikey(sqlSession, l);
	}
	
	@Override
	public int updateViewCount(int boardNo) {
		return boardDao.updateViewCount(sqlSession, boardNo);
	}
	
	@Override
	public int insertReplyLikey(ReLikey r) {
		return boardDao.insertReplyLikey(sqlSession, r);
	}
	
	@Override
	public ReLikey selectReplyLikey(ReLikey r) {
		return boardDao.selectReplyLikey(sqlSession, r);
	}
	@Override
	public int updateYReplyLikey(ReLikey r) {
		return boardDao.updateYReplyLikey(sqlSession, r);
	}
	
	@Override
	public Reply selectReplyLikeyCount(ReLikey r) {
		return boardDao.selectReplyLikeyCount(sqlSession, r);
	}
	
	@Override
	public int updateNReplyLikey(ReLikey r) {
		return boardDao.updateNReplyLikey(sqlSession, r);
	}


	@Override
	public ArrayList<Category> selectCategoryList() {
		return boardDao.selectCategoryList(sqlSession);
	}

	//신고하기 신고내용 가져오기
	@Override
	public ArrayList<Report> selectReport() {
		return boardDao.selectReport(sqlSession);
	}
	
	@Override
	public ArrayList<Attachment> helpmeAttachmentList(int boardNo) {
		return boardDao.helpmeAttachmentList(sqlSession, boardNo);
	}

	//신고하기 adminComent
	@Override
	public int reportUpdate(Report rt) {
		return boardDao.reportUpdate(sqlSession, rt);
	}

	@Override
	public Board helpmeselectOne2(int boardNo) {
		return boardDao.helpmeselectOne2(sqlSession, boardNo);
	}

	public ArrayList<Report> selectEndReport() {
		return boardDao.selectEndReport(sqlSession);
	}
	
	public int deleteAttachment(int boardNo) {
		return boardDao.deleteAttachment(sqlSession, boardNo);
	}

	


}
