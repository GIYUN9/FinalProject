package com.kh.finalProject.chat.model.vo;

import lombok.Data;

@Data
public class ChatMsgRead {
	private int readedMsgNo;
	private int chatRoomNo;
	private int msgNo;
	private int memNo;
	private int isRead;
}
