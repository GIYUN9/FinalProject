package com.kh.finalProject.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.finalProject.board.model.vo.Board;
import com.kh.finalProject.board.model.vo.Reply;
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
	
	
	public int helpinsertBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("boardMapper.helpinsertBoard", b);
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
		return sqlSession.insert("boardMapper.helpAttachment", at);
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
}
