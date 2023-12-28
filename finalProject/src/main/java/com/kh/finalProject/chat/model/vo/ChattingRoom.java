package com.kh.finalProject.chat.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class ChattingRoom {
	
    private int chatRoomNo;
    private String title;
    private String status;
    private int memberNo;
    private int memberCount;
    private int lastMsgNo;
    private Date lastChatTime;
    private int chatCount;
    private String memberName;
}
