package com.kh.finalProject.chat.model.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ChatRoomList {
	
	private int chatRoomNo;
	private int isGroup;
	private String memList;
	private String lastMsg;
    private Timestamp lastChatTime;
	private int unreadCount;
}
