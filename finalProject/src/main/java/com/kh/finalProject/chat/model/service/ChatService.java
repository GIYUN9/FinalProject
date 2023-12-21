package com.kh.finalProject.chat.model.service;

import java.util.ArrayList;

import com.kh.finalProject.chat.model.vo.ChattingRoom;
import com.kh.finalProject.chat.model.vo.Message;

public interface ChatService {

	//메시지 불러오기 (select)
	Message messageLoad(Message m);
	
	//채팅방룸 리스트
	ArrayList<ChattingRoom> chattingRoomList (ChattingRoom cr);
}
