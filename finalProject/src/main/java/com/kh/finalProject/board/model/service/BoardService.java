package com.kh.finalProject.board.model.service;

import java.util.ArrayList;

import com.kh.finalProject.board.model.vo.Board;
import com.kh.finalProject.board.model.vo.Likey;
import com.kh.finalProject.board.model.vo.ReLikey;
import com.kh.finalProject.board.model.vo.Reply;
import com.kh.finalProject.common.vo.Attachment;
import com.kh.finalProject.common.vo.Category;
import com.kh.finalProject.common.vo.Notice;
import com.kh.finalProject.common.vo.PageInfo;
import com.kh.finalProject.common.vo.Report;


public interface BoardService {
	
	//게시글 총 페이지
	int helpselect();

	//커뮤니티 전체보기 조회
	ArrayList<Board> selectCommList(PageInfo pi);
	
	//게시글 상세조회 
	Board selectBoard(int boardNo);
	
	//도와줄게요 보드번호 가져오는 중간 쿼리
	Board helpselectOne(Board b);
	
	//도와줄게요 날짜순 리스트
	ArrayList<Board> helpDateCheck(Board b, PageInfo pi);
	
	//도와줄게요 날짜순 count(*)
	int helpDateCheckCount();
	
	//도와줄게요 조회순 리스트
	ArrayList<Board> helpReference(Board b, PageInfo pi);
	
	//도와줄게요 조회순 count(*)
	int helpReferenceCount();
	
	//도와줄게요 조회순 증가 update
	int helpincreaseCount(int boardNo);
	
	//도와줄게요 리스트조회
	ArrayList<Board> helpselectList(PageInfo pi);
	
	//도와줄게요 카테고리별 리스트 조회
	ArrayList<Board> helpCategoryList(PageInfo pi, int categoryNo);
		
	//도와줄게요 게시글 상세조회
	Board helpSelectBoard(int boardNo);
	
	//도와줄게요 게시판 리스트 count(*)조회
	int seleteHelpListCount();
	
	//도와줄게요 카테고리별 리스트 count 조회
	int helpCategoryCount(int categoryNo);

	//얼마예요 궁금해요 등 게시글 상세조회
	Board selectCommBoard(int boardNo);
	
	//도와줄게요 게시판 등록
	int helpinsertBoard(Board b);
	
	//도와줄게요 사진 첨부
	int helpAttachment(Attachment at);
	
	//도와줄게요 게시판 수정
	int helpUpdateBoard(Board b);
	
	//도와줄게요 게시판 삭제
	int helpDeleteBoard(int boardNo);
	
	//커뮤니티 게시글 수(조회)
	int selectCommListCount();
	
	//공지사항 리스트(조회)
	ArrayList<Notice> noticeList();
	
	//공지사항 리스트 2개조회
	ArrayList<Notice> noticeListTwo();
	
	//공지사항 등록
	int insertNotice(Notice n);

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
	
	//함께해요 게시글 수 (조회)
	int selectTogetherListCount();
	
	//함께해요 리스트(조회)
	ArrayList<Board> selectTogetherList(PageInfo pi);
	
	//커뮤니티 게시글 등록
	int insertCommboard(Board b);
	
	//도와주세요, 도와줄게요, 궁금해요, 얼마예요, 함께해요 가장빠른 등록일기준 2개
	ArrayList<Board> findBoardList1(String keyWord);
	ArrayList<Board> findBoardList2(String keyWord);
	ArrayList<Board> findBoardList3(String keyWord);
	ArrayList<Board> findBoardList4(String keyWord);
	ArrayList<Board> findBoardList5(String keyWord);
	
	//도와주세요 보드번호 가져오는 중간 쿼리
	Board helpmeselectOne(Board b);
	
	//도와주세요 보드번호 가져오는 중간 쿼리
	Board helpmeselectOne2(int boardNo);
	
	//도와주세요 리스트 조회
	ArrayList<Board> helpmeselectList(PageInfo pi);
	
	//도와주세요 카테고리 별 리스트 조회
	ArrayList<Board> helpmeCategoryList(PageInfo pi, int categoryNo);
	
	//도와주세요 게시판 리스트 count(*)조회
	int seleteHelpmeListCount();
	
	//도와주세요 카테고리별 리스트 카운트(*)조회
	int helpmeCategoryCount(int categoryNo);
	
	//도와주세요 날짜순 리스트
	ArrayList<Board> helpmeDateCheck(Board b, PageInfo pi);
		
	//도와주세요 날짜순 count(*)
	int helpmeDateCheckCount();
	
	//도와주세요 조회순 리스트
	ArrayList<Board> helpmeReference(Board b, PageInfo pi);
		
	//도와주세요 조회순 count(*)
	int helpmeReferenceCount();
	
	//도와주세요 게시글 등록
	int helpmeInsertBoard(Board b);
	
	//도와주세요 사진 첨부
	int helpmeAttachment(Attachment at);
	
	//도와주세요 게시글 상세조회
	Board helpmeSelectBoard(int boardNo);
	
	//도와주세요 게시글 수정
	int helpmeUpdateBoard(Board b);
	
	//도와주세요 게시글 삭제
	int helpmeDeleteBoard(int boardNo);

	int updateCommBoard(Board b);
	
	int deleteCommBoard(int boardNo);
	
	int insertReply(Reply r);
	
	ArrayList<Reply> selectReplyList(Board b);
	
	int deleteReply(int replyNo);
	
	int insertLikey(Likey l);
	
	int updateYLikey(Likey l);
	
	Board selectLikeyCount(Likey l);
	
	int updateNLikey(Likey l);
	
	Likey selectLikey(Likey l);
	
	int updateViewCount(int boardNo);
	
	int insertReplyLikey(ReLikey r);
	
	ReLikey selectReplyLikey(ReLikey r);
	
	int updateYReplyLikey(ReLikey r);
	
	Reply selectReplyLikeyCount(ReLikey r);
	
	int updateNReplyLikey(ReLikey r);
	
	ArrayList<Category> selectCategoryList();
	
	//신고하기 신고내용 가져오기
	ArrayList<Report> selectReport();
	
	ArrayList<Attachment> helpmeAttachmentList(int boardNo);
	//신고하기 adminComent
	//int reportUpdate(Report rp);
//	//신고하기 adminComent
//	int reportUpdate(Report rp);

	//신고하기 adminComent Update
	int reportUpdate(Report rt);
	
	ArrayList<Report> selectEndReport();
	
	int deleteAttachment(int boardNo);
}
