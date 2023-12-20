package com.kh.finalProject.chat.model.vo;
import lombok.Data;
import oracle.sql.TIMESTAMP;

@Data
public class Message {
	
    MSG_NO NUMBER PRIMARY KEY,
    MSG VARCHAR2(4000) NOT NULL,
    CREATE_DATE TIMESTAMP DEFAULT SYSTIMESTAMP,
    CHAT_ROOM_NO NUMBER REFERENCES CHATROOM(CHAT_ROOM_NO),
    MEM_NO NUMBER REFERENCES MEMBER(MEM_NO)
    
    private int msgNo;
	private String msg;
	private TIMESTAMP createDate;
	private int chatRoomNo;
	private String time;

}
