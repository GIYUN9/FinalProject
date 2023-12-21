package com.kh.finalProject.chat.model.vo;
import lombok.Data;
import oracle.sql.TIMESTAMP;

@Data
public class Message {
	
    private int msgNo;
	private String msg;
	private TIMESTAMP createDate;
	private int chatRoomNo;
	private String memNo;
}
