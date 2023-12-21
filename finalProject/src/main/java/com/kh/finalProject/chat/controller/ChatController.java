package com.kh.finalProject.chat.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.finalProject.chat.model.service.ChatService;
import com.kh.finalProject.chat.model.vo.ChattingRoom;
import com.kh.finalProject.member.model.vo.Member;


@Controller
public class ChatController {

	@Autowired
	private ChatService chatService;
	
	@GetMapping("chat.ch")
	public String chat(HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		  
		if (loginUser == null) {
			return "redirect:/";
		}  
		return "chatting/chat";
	}

	
	@RequestMapping(value="chatRoom.ch")
	public String chattingRoom(ChattingRoom cr, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		cr.setMemberNo(loginUser.getMemberNo());
		ArrayList<ChattingRoom> crList = chatService.chattingRoomList(cr);
		System.out.println("dddd" + crList);
		session.setAttribute("crList", crList);
		return "chatting/chattingRoom";
	}
	
	
	
}
