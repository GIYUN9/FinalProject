package com.kh.finalProject.chat.model.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ChattingRoom {    
    private int receiverNo;
    private String receiverName;
    private String status;
    private int senderNo;
    private String senderName;
    private int memberCount;
    private String lastMsg;
    private Timestamp lastChatTime;
    private int chatCount;
    
    //추가
    private int chatRoomNo;
    private int isGroup;
    private int unreadCount;
}
