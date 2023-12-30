package com.kh.finalProject.chat.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.kh.finalProject.chat.model.vo.Message;
import com.kh.finalProject.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component("chatServer")
public class ChatServer extends TextWebSocketHandler{
	private final Map<String, WebSocketSession> userSessions = new ConcurrentHashMap();


	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
	    Member loginUser = (Member) session.getAttributes().get("loginUser");
        String memNo = "" + loginUser.getMemberNo();
		log.info("{} 연결됨", memNo);
//		targetSession.sendMessage({type:intro});
		
		userSessions.put(memNo ,session);
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
	    Member loginUser = (Member) session.getAttributes().get("loginUser");
        String memNo = "" + loginUser.getMemberNo();
		log.info("{} 연결끊김", memNo);
	    userSessions.remove(memNo); 
	}	

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
	    Member loginUser = (Member) session.getAttributes().get("loginUser");
	    String receiverNo = session.getAttributes().get("target").toString();
		String memberName = loginUser.getMemberName();
		log.info("halndletextmsg receiver :" + receiverNo);
		
		JsonObject obj = new JsonParser().parse(message.getPayload()).getAsJsonObject();
		log.info("{}", obj);
		
		Message vo = new Message();
		vo.setMsg(obj.get("message").getAsString());
	    Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		vo.setCreateDate(timestamp);
		System.out.println("msg 내용 : " + vo.getMsg() + " 시간 : " + timestamp);

		sendMessageToUser(session, receiverNo, vo);
	}
	
	private void sendMessageToUser(WebSocketSession session, String receiverNo, Message msgVo) {
	    Member loginUser = (Member) session.getAttributes().get("loginUser");
		msgVo.setSenderNo(loginUser.getMemberNo());
		System.out.println( "memNo : " + loginUser.getMemberNo() + "/ senderNo : " + msgVo.getSenderNo());
		
		
		
		WebSocketSession targetSession = userSessions.get(receiverNo);
		System.out.println("msgvo syso receiverNo : " + receiverNo);

		WebSocketSession mySession = userSessions.get(String.valueOf(loginUser.getMemberNo()));
		System.out.println("msgvo syso sender" + msgVo.getSenderNo() + " / login User No : " + loginUser.getMemberNo());

		
		if(targetSession != null && targetSession.isOpen()) {
			String str = new Gson().toJson(msgVo);
			TextMessage msg = new TextMessage(str);
			try {
				mySession.sendMessage(msg);
				targetSession.sendMessage(msg);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
}
