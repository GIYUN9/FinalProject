package com.kh.finalProject.chat.model.vo;
import lombok.Data;
import java.sql.Timestamp;

@Data
public class Message {
	
    private int msgNo;
	private String msg;
	private Timestamp createDate;
	private int chatRoomNo;
	private int senderNo;
	private int receiverNo;
	private String memberName;
}
