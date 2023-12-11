package com.kh.finalProject.chat.controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;
import com.kh.finalProject.chat.model.vo.Message;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component("chatServer")
public class ChatServer extends TextWebSocketHandler{
	private final Set<WebSocketSession> sessionSet = new HashSet();

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		String nick = (String)session.getAttributes().get("nick");
		log.info("{} 연결됨", nick);
		sessionSet.add(session);
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		String nick = (String)session.getAttributes().get("nick");
		log.info("{} 연결끊김", nick);
		sessionSet.remove(session); 
	}	

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {

		//수신된 메세지 모든 세션에 전달
		String sender = (String)session.getAttributes().get("nick");
		String msg = message.getPayload();
		
		TextMessage textMsg = new TextMessage(sender + " : " + msg);
		
		for (WebSocketSession s : sessionSet) {
			s.sendMessage(textMsg);
			
		}
	}
}
