package com.kh.finalProject.chat.model.service;

import java.util.ArrayList;

import com.kh.finalProject.chat.model.vo.ChatMsgRead;
import com.kh.finalProject.chat.model.vo.ChattingRoom;
import com.kh.finalProject.chat.model.vo.GroupChat;
import com.kh.finalProject.chat.model.vo.Message;
import com.kh.finalProject.member.model.vo.Member;

public interface ChatService {


	//채팅방 생성
	int createChatRoom(int isGroup);
	
	//단체 채팅방 생성
	int createGroupChat(int memNo);
	
	//채팅방 분류
	int selectIsGroup(int chatRoomNo);
	
	//채팅방룸 리스트
	ArrayList<ChattingRoom> chattingRoomList (ChattingRoom cr);
	int chattingRoomInfo (String lastMsg, int senderNo, int receiverNo);
	
	//단체 채팅방에서 멤버가 같을때 중복 채팅방 생성 방지
	ArrayList<GroupChat> checkDuplicatedChatRoom(int memNo);
		
	// 그룹 채팅 멤버 목록
	ArrayList<Member> chatMemberList (GroupChat gc);

	
	
	
	
	//메시지 전송	
	int insertMsg(Message msg);
	ArrayList<ChattingRoom> senderInfo (int chatRoomNo, int memberNo);
	
	//메시지 불러오기 (select)
	ArrayList<Message> msgList(Message msg);
	ArrayList<Message> lastMsg(Message msg);
	
	// 읽지 않은 메시지 카운트
	int unReadCount(GroupChat gc);
	int selectUnreadMsgCount(int memNo);
	
	//메세지 읽음 체크
	int insertReadedMsg(ChatMsgRead read);
	
	//메시지 읽음 처리 (업데이트)
	int updateIsRead(ChatMsgRead read);
	
	
	


	
	
}
