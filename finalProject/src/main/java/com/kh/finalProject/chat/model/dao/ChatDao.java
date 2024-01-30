package com.kh.finalProject.chat.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.finalProject.chat.model.vo.ChatMsgRead;
import com.kh.finalProject.chat.model.vo.ChattingRoom;
import com.kh.finalProject.chat.model.vo.GroupChat;
import com.kh.finalProject.chat.model.vo.Message;
import com.kh.finalProject.member.model.vo.Member;

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
	
	public ArrayList<Message> lastMsg(SqlSessionTemplate sqlSession, Message msg) {
		return (ArrayList)sqlSession.selectList("chatMapper.lastMsg", msg);	
	}
	
	public ArrayList<Message> searchMessage(SqlSessionTemplate sqlSession, String searchText) {
		Map<String, String> parameters = new HashMap<>();
        parameters.put("searchText", searchText);
        return (ArrayList)sqlSession.selectList("chatMapper.searchMessage", parameters);
	}
	
	public ArrayList<ChattingRoom> chattingRoomList (SqlSessionTemplate sqlSession, ChattingRoom cr){
		return (ArrayList)sqlSession.selectList("chatMapper.chattingRoomList", cr);
	}
	
	public int chattingRoomInfo (SqlSessionTemplate sqlSession, String lastMsg, int senderNo, int receiverNo){
	    Map<String, Object> paramMap = new HashMap<>();
	    paramMap.put("lastMsg", lastMsg);
	    paramMap.put("senderNo", senderNo);
	    paramMap.put("receiverNo", receiverNo);
		return sqlSession.update("chatMapper.chattingRoomInfo", paramMap);
	}
	
	public ArrayList<ChattingRoom> senderInfo(SqlSessionTemplate sqlSession, int chatRoomNo, int memberNo) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("chatRoomNo", chatRoomNo);
		paramMap.put("memberNo", memberNo);
		return (ArrayList)sqlSession.selectList("chatMapper.senderInfo", paramMap);
	}	
	
	//읽지 않은 메시지 카운트
	public int unreadMsg(SqlSessionTemplate sqlSession, GroupChat gc) {
		return sqlSession.selectOne("chatMapper.unreadMsg", gc);
	}
	
	//채팅방 생성
	public int createChatRoom(SqlSessionTemplate sqlSession, int isGroup) {
		return sqlSession.insert("chatMapper.createChatRoom", isGroup);
	}
	
	//그룹 채팅 생성
	public int createGroupChat(SqlSessionTemplate sqlSession, int memNo) {
		return sqlSession.insert("chatMapper.createChatRoom", memNo);
	}
	
	//중복방 체크
	public ArrayList<GroupChat> checkDuplicatedChatRoom(SqlSessionTemplate sqlSession, int memNo) {
		return (ArrayList)sqlSession.selectList("chatMapper.checkDuplicatedChatRoom", memNo);
	}
	
	//그룹쳇 확인
	public int selectIsGroup(SqlSessionTemplate sqlSession, int chatRoomNo) {
		return sqlSession.selectOne("chatMapper.selectIsGroup", chatRoomNo);
	}
	
	//그룹 쳇 멤버 리스트
	public ArrayList<Member> chatMemberList(SqlSessionTemplate sqlSession, GroupChat gc) {
		return (ArrayList)sqlSession.selectList("chatMapper.chatMemberList", gc);
	}
	
	public int unReadCount(SqlSessionTemplate sqlSession, GroupChat gc){
		return sqlSession.selectOne("chattingMapper.unReadCount", gc);
	}
	
	public int insertReadedMsg(SqlSessionTemplate sqlSession, ChatMsgRead read){
		return sqlSession.insert("chattingMapper.insertReadedMsg", read);
	}
	
	public int updateIsRead(SqlSessionTemplate sqlSession, ChatMsgRead read){
		return sqlSession.update("chattingMapper.updateIsRead", read);
	}
	
	public int selectUnreadMsgCount(SqlSessionTemplate sqlSession, int memNo){
		return sqlSession.selectOne("chattingMapper.selectUnreadMsgCount", memNo);
	}
}
