package com.kh.finalProject.chat.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.finalProject.chat.model.service.ChatService;


@Controller
public class ChatController {

	@Autowired
	private ChatService chatService;
	
	@GetMapping("chat")
	public String chat(HttpSession session) {
		Object nick = session.getAttribute("nick");
		
		if (nick == null) {
			return "redirect: /";
		}  
		return "chat";
	}
	
	@RequestMapping(value = "chat.ch")
	public String chat() {
		//채팅 화면
		return "chatting/chat";
	}
	
	@RequestMapping(value="chatRoom.ch")
	public String chattingRoom() {
		// 도와주세요 화면
		return "chatting/chattingRoom";
	}
}
