package com.kh.finalProject.chat.controller;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.kh.finalProject.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component("chatServer")
public class ChatServer extends TextWebSocketHandler{
	private final Set<WebSocketSession> sessionSet = new HashSet();

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
	    Member loginUser = (Member) session.getAttributes().get("loginUser");
	    String memberName = loginUser.getMemberName();
		log.info("{} 연결됨", memberName);
		sessionSet.add(session);
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
	    Member loginUser = (Member) session.getAttributes().get("loginUser");
	    String memberName = loginUser.getMemberName();		
	    log.info("{} 연결끊김", memberName);
		sessionSet.remove(session); 
	}	

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {

		//수신된 메세지 모든 세션에 전달
	    Member loginUser = (Member) session.getAttributes().get("loginUser");
	    String sender = loginUser.getMemberName();		
		String msg = message.getPayload();
		
//		TextMessage textMsg = new TextMessage(sender + " : " + msg);
		
//		for (WebSocketSession s : sessionSet) {
//			s.sendMessage(textMsg);
//		}
	}
}
