package com.kh.finalProject.chat.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.finalProject.chat.model.vo.ChattingRoom;
import com.kh.finalProject.chat.model.vo.Message;

@Repository
public class ChatDao {

	public int insertMsg(SqlSessionTemplate sqlSession, Message msg) {
		return sqlSession.insert("chatMapper.insertMsg", msg);
	}
	
	public int deleteChat(SqlSessionTemplate sqlSession, Message msg) {
		return sqlSession.update("chatMapper.deleteChat", msg);
	}
	
	public ArrayList<Message> msgList(SqlSessionTemplate sqlSession, Message msg) {
		return (ArrayList)sqlSession.selectList("chatMapper.msgList", msg);	
	}
	
	public ArrayList<Message> searchMessage(SqlSessionTemplate sqlSession, String searchText) {
		Map<String, String> parameters = new HashMap<>();
        parameters.put("searchText", searchText);
        return (ArrayList)sqlSession.selectList("chatMapper.searchMessage", parameters);
	}
	
	public ArrayList<ChattingRoom> chattingRoomList (SqlSessionTemplate sqlSession, ChattingRoom cr){
		return (ArrayList)sqlSession.selectList("chatMapper.chattingRoomList", cr);
	}
	
	public ArrayList<ChattingRoom> senderInfo(SqlSessionTemplate sqlSession, int chatRoomNo, int memberNo) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("chatRoomNo", chatRoomNo);
		paramMap.put("memberNo", memberNo);
		return (ArrayList)sqlSession.selectList("chatMapper.senderInfo", paramMap);
	}	
}
