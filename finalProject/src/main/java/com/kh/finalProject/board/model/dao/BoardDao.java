package com.kh.finalProject.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.finalProject.board.model.vo.Board;
import com.kh.finalProject.board.model.vo.Likey;
import com.kh.finalProject.board.model.vo.ReLikey;
import com.kh.finalProject.board.model.vo.Reply;
import com.kh.finalProject.common.vo.Attachment;
import com.kh.finalProject.common.vo.Category;
import com.kh.finalProject.common.vo.Notice;
import com.kh.finalProject.common.vo.PageInfo;
import com.kh.finalProject.common.vo.Report;

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
	
	public ArrayList<Board> helpCategoryList(SqlSessionTemplate sqlSession, PageInfo pi, int categoryNo) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.helpCategoryList", categoryNo, rowBounds);
	}
	
	
	public int helpinsertBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("boardMapper.helpinsertBoard", b);
	}

	public int helpUpdateBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("boardMapper.helpUpdateBoard", b);
	}
	
	public int helpDeleteBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.helpDeleteBoard", boardNo);
	}
	
	public Board selectBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.selectBoard", boardNo);
	}
	
	public int helpAttachment(SqlSessionTemplate sqlSession, Attachment at) {
		return sqlSession.insert("boardMapper.helpAttachment", at);
	}
	
	public int helpselect(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.helpselect");
	}
	
	public Board helpSelectBoard(SqlSessionTemplate sqlSeesion, int boardNo) {
		return sqlSeesion.selectOne("boardMapper.helpSelectBoard", boardNo);
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
	
	public int helpCategoryCount(SqlSessionTemplate sqlSession, int categoryNo) {
	
		return sqlSession.selectOne("boardMapper.helpCategoryCount", categoryNo);
	}
	
	public int deleteNotice(SqlSessionTemplate sqlSeesion, Notice n) {
		return sqlSeesion.insert("boardMapper.deleteNotice", n);
	}
	
	public int selectCuriousListCount(SqlSessionTemplate sqlSeesion) {
		return sqlSeesion.selectOne("boardMapper.selectCuriousListCount");
	}
	
	public ArrayList<Board> selectCuriousList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.selectCuriousList", null, rowBounds);
	}
	
	public int selectMuchListCount(SqlSessionTemplate sqlSeesion) {
		return sqlSeesion.selectOne("boardMapper.selectMuchListCount");
	}
	
	public ArrayList<Board> selectMuchList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.selectMuchList", null, rowBounds);
	}
	
	public Board helpselectOne(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.selectOne("boardMapper.helpselectOne" ,b);
	}
	
	public int selectTogetherListCount(SqlSessionTemplate sqlSeesion) {
		return sqlSeesion.selectOne("boardMapper.selectTogetherListCount");
	}
	
	public ArrayList<Board> selectTogetherList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.selectTogetherList", null, rowBounds);
	}
	
	//도와주세요 도와줄게요 등 게시판 상세조회
	public Board selectCommBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.selectCommBoard", boardNo);
	}
	
	public int insertCommboard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("boardMapper.insertCommboard", b);
	}
	
	public ArrayList<Notice> noticeListTwo(SqlSessionTemplate sqlSeesion){
		return (ArrayList)sqlSeesion.selectList("boardMapper.noticeListTwo");
	}
	
	public ArrayList<Board> findBoardList1(SqlSessionTemplate sqlSeesion, String keyWord){
		return (ArrayList)sqlSeesion.selectList("boardMapper.findBoardList1", keyWord);
	}
	public ArrayList<Board> findBoardList2(SqlSessionTemplate sqlSeesion, String keyWord){
		return (ArrayList)sqlSeesion.selectList("boardMapper.findBoardList2", keyWord);
	}
	public ArrayList<Board> findBoardList3(SqlSessionTemplate sqlSeesion, String keyWord){
		return (ArrayList)sqlSeesion.selectList("boardMapper.findBoardList3", keyWord);
	}
	public ArrayList<Board> findBoardList4(SqlSessionTemplate sqlSeesion, String keyWord){
		return (ArrayList)sqlSeesion.selectList("boardMapper.findBoardList4", keyWord);
	}
	public ArrayList<Board> findBoardList5(SqlSessionTemplate sqlSeesion, String keyWord){
		return (ArrayList)sqlSeesion.selectList("boardMapper.findBoardList5", keyWord);
	}
	
	public ArrayList<Board> helpmeselectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.helpmeselectList", null, rowBounds);
	}
	
	public ArrayList<Board> helpmeCategoryList(SqlSessionTemplate sqlSession, PageInfo pi, int categoryNo) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.helpmeCategoryList", categoryNo, rowBounds);
	}
	
	
	
	public int seleteHelpmeListCount(SqlSessionTemplate sqlSeesion) {
		return sqlSeesion.selectOne("boardMapper.seleteHelpmeListCount");
	}
	
	public int helpmeCategoryCount(SqlSessionTemplate sqlSession, int categoryNo) {
		
		return sqlSession.selectOne("boardMapper.helpmeCategoryCount", categoryNo);
	}
	
	
	public int helpmeInsertBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("boardMapper.helpmeInsertBoard", b);
	}
	
	public Board helpmeselectOne(SqlSessionTemplate sqlSeesion, Board b) {
		return sqlSeesion.selectOne("boardMapper.helpmeselectOne", b);
	}
	
	public int helpmeAttachment(SqlSessionTemplate sqlSeesion, Attachment at) {
		return sqlSeesion.insert("boardMapper.helpmeAttachment", at);
	}
	
	public int helpmeUpdateBoard(SqlSessionTemplate sqlSeesion, Board b) {
		return sqlSeesion.update("boardMapper.helpmeUpdateBoard", b);
	}
	
	public int helpmeDeleteBoard(SqlSessionTemplate sqlSeesion, int boardNo) {
		return sqlSeesion.update("boardMapper.helpmeDeleteBoard", boardNo);
	}
	
	public Board helpmeSelectBoard(SqlSessionTemplate sqlSeesion, int boardNo) {
		return sqlSeesion.selectOne("boardMapper.helpmeSelectBoard", boardNo);
	}
	
	public int updateCommBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("boardMapper.updateCommBoard", b);
	}
	
	public int deleteCommBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.deleteCommBoard", boardNo);
	}
	
	public int insertReply(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.insert("boardMapper.insertReply", r);
	}
	
	public ArrayList<Reply> selectReplyList(SqlSessionTemplate sqlSession, Board b){
		return (ArrayList)sqlSession.selectList("boardMapper.selectReplyList", b);
	}
	
	public int deleteReply(SqlSessionTemplate sqlSession, int replyNo) {
		return sqlSession.update("boardMapper.deleteReply", replyNo);
	}
	

	public ArrayList<Board> helpDateCheck(SqlSessionTemplate sqlSession, Board b, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.helpDateCheck",null, rowBounds);
	}
	
	public int helpDateCheckCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.helpDateCheckCount");
	}
	public int insertLikey(SqlSessionTemplate sqlSession, Likey l) {
		return sqlSession.insert("boardMapper.insertLikey", l);
	}
	
	
	public int updateYLikey(SqlSessionTemplate sqlSession, Likey l) {
		return sqlSession.update("boardMapper.updateYLikey", l);
	}
	
	public Board selectLikeyCount(SqlSessionTemplate sqlSession, Likey l) {
		return sqlSession.selectOne("boardMapper.selectLikeyCount", l);
	}
	
	public int updateNLikey(SqlSessionTemplate sqlSession, Likey l) {
		return sqlSession.update("boardMapper.updateNLikey", l);
	}
	
	public Likey selectLikey(SqlSessionTemplate sqlSession, Likey l) {
		return sqlSession.selectOne("boardMapper.selectLikey", l);
	}
	public int updateViewCount(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.updateViewCount", boardNo);
	}
	public int insertReplyLikey(SqlSessionTemplate sqlSession, ReLikey r) {
		return sqlSession.insert("boardMapper.insertReplyLikey", r);
	}
	public ReLikey selectReplyLikey(SqlSessionTemplate sqlSession, ReLikey r) {
		return sqlSession.selectOne("boardMapper.selectReplyLikey", r);
	}
	
	public int updateYReplyLikey(SqlSessionTemplate sqlSession, ReLikey r) {
		return sqlSession.update("boardMapper.updateYReplyLikey", r);
	}
	
	public Reply selectReplyLikeyCount(SqlSessionTemplate sqlSession, ReLikey r) {
		return sqlSession.selectOne("boardMapper.selectReplyLikeyCount", r);
	}
	public int updateNReplyLikey(SqlSessionTemplate sqlSession, ReLikey r) {
		return sqlSession.update("boardMapper.updateNReplyLikey", r);
	}
	
	public ArrayList<Board> helpReference(SqlSessionTemplate sqlSession, Board b, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.helpReference",null, rowBounds);
	}
	
	public int helpReferenceCount(SqlSessionTemplate sqlSeesion) {
		return sqlSeesion.selectOne("boardMapper.helpReferenceCount");
	}
	
	public ArrayList<Board> helpmeDateCheck(SqlSessionTemplate sqlSession, Board b, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.helpmeDateCheck",null, rowBounds);
	}
	
	public int helpmeDateCheckCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.helpmeDateCheckCount");
	}
	
	public int helpincreaseCount(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.helpincreaseCount", boardNo);
	}
	
	public ArrayList<Board> helpmeReference(SqlSessionTemplate sqlSession, Board b, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.helpmeReference",null, rowBounds);
	}
	
	public int helpmeReferenceCount(SqlSessionTemplate sqlSeesion) {
		return sqlSeesion.selectOne("boardMapper.helpmeReferenceCount");
	}

	public ArrayList<Category> selectCategoryList(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("boardMapper.selectCategoryList");
	}
	
	public ArrayList<Report> selectReport(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectReport");
	}
	
	public int reportUpdate(SqlSessionTemplate sqlSession, Report rt) {
		return sqlSession.update("boardMapper.reportUpdate", rt);
	}
	
	public ArrayList<Report> selectEndReport(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("boardMapper.selectEndReport");
	}
	
	
	public ArrayList<Attachment> helpmeAttachmentList(SqlSessionTemplate sqlSession, int boardNo) {
		return (ArrayList)sqlSession.selectList("boardMapper.helpmeAttachmentList", boardNo);
	}
	
	public Board helpmeselectOne2(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.helpmeselectOne2", boardNo);
	}
	
	public int deleteAttachment(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.deleteAttachment", boardNo);
	}
}
