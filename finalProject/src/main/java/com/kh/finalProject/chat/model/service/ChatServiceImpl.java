package com.kh.finalProject.chat.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalProject.chat.model.dao.ChatDao;
import com.kh.finalProject.chat.model.vo.ChatMsgRead;
import com.kh.finalProject.chat.model.vo.ChattingRoom;
import com.kh.finalProject.chat.model.vo.GroupChat;
import com.kh.finalProject.chat.model.vo.Message;
import com.kh.finalProject.member.model.vo.Member;

@Service
public class ChatServiceImpl implements ChatService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private ChatDao chatDao;

	@Override
	public ArrayList<ChattingRoom> chattingRoomList(ChattingRoom cr) {
		ArrayList<ChattingRoom> chattingRoomList = chatDao.chattingRoomList(sqlSession, cr);
		return chattingRoomList;
	}

	@Override
	public ArrayList<ChattingRoom> senderInfo(int chatRoomNo, int memberNo) {
		ArrayList<ChattingRoom> senderInfo = chatDao.senderInfo(sqlSession, chatRoomNo, memberNo);
		return senderInfo;
	}

	@Override
	public ArrayList<Message> msgList(Message msg) {
		ArrayList<Message> msgList = chatDao.msgList(sqlSession, msg);
		return msgList;
	}

	@Override
	public int insertMsg(Message msg) {
		return chatDao.insertMsg(sqlSession, msg);
	}

	@Override
	public ArrayList<Message> lastMsg(Message msg) {
		ArrayList<Message> lastMsg = chatDao.lastMsg(sqlSession, msg);
		return lastMsg;
	}

	@Override
	public int chattingRoomInfo(String lastMsg, int senderNo, int receiverNo) {
		int chattingRoomInfo = chatDao.chattingRoomInfo(sqlSession, lastMsg, senderNo, receiverNo);
		return chattingRoomInfo;
	}

	@Override
	public int createChatRoom(int isGroup) {
		return chatDao.createChatRoom(sqlSession, isGroup);
	}

	@Override
	public int createGroupChat(int memNo) {
		return chatDao.createGroupChat(sqlSession, memNo);
	}

	@Override
	public int selectIsGroup(int chatRoomNo) {
		return chatDao.selectIsGroup(sqlSession, chatRoomNo);

	}

	@Override
	public ArrayList<GroupChat> checkDuplicatedChatRoom(int memNo) {
		return chatDao.checkDuplicatedChatRoom(sqlSession, memNo);

	}

	@Override
	public ArrayList<Member> chatMemberList(GroupChat gc) {
		return chatDao.chatMemberList(sqlSession, gc);

	}

	@Override
	public int unReadCount(GroupChat gc) {
		return chatDao.unReadCount(sqlSession, gc);

	}

	@Override
	public int selectUnreadMsgCount(int memNo) {
		return chatDao.selectUnreadMsgCount(sqlSession, memNo);
	}

	@Override
	public int insertReadedMsg(ChatMsgRead read) {
		return chatDao.insertReadedMsg(sqlSession, read);

	}

	@Override
	public int updateIsRead(ChatMsgRead read) {
		return chatDao.updateIsRead(sqlSession, read);

	}
	
	
	
}
