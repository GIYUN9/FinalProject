package com.kh.finalProject.chat.model.vo;

import java.sql.Date;

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
    private Date lastChatTime;
    private int chatCount;
}
