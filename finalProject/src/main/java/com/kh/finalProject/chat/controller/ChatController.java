package com.kh.finalProject.chat.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.socket.WebSocketSession;

import com.kh.finalProject.chat.model.service.ChatService;
import com.kh.finalProject.chat.model.vo.ChattingRoom;
import com.kh.finalProject.chat.model.vo.Message;
import com.kh.finalProject.member.model.vo.Member;


@Controller
public class ChatController {

	@Autowired
	private ChatService chatService;
	
	@RequestMapping(value = "/insert.ch")
	public String insertMsg(Message msg, HttpSession session, Model model) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		msg.setSenderNo(loginUser.getMemberNo());
		msg.setReceiverNo(Integer.parseInt(session.getAttribute("memNo").toString()));
		int result = chatService.insertMsg(msg); // 아이디로만 멤버객체 가져오기
		
		if(result > 0) {
			return "chatting/chat";
		} else {
			model.addAttribute("errorMsg", "회원가입 실패");
			return "common/errorPage";
		}
	}
	
	@GetMapping("chat.ch")
	public String chat(Message msg, HttpSession session, String memName, String memNo) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		msg.setSenderNo(loginUser.getMemberNo());
		msg.setReceiverNo(Integer.parseInt(memNo));
		System.out.println("chatController chat reciever No : " + msg.getReceiverNo());
		session.setAttribute("target", msg.getReceiverNo());
	    session.setAttribute("memName", memName); 
	    session.setAttribute("memNo", memNo); 
	    
		ArrayList<Message> msgList = chatService.msgList(msg);
		session.setAttribute("msgList", msgList);
		System.out.println("msgList" + msgList);
		
		ArrayList<Message> lastMsg = chatService.lastMsg(msg);
		session.setAttribute("lastMsg", lastMsg);
		System.out.println("lastMsg" + lastMsg);
		if (loginUser == null) {
			return "redirect:/";
		}  
		return "chatting/chat";
	}

	
	@RequestMapping(value="chatRoom.ch")
	public String chattingRoom(ChattingRoom cr, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		cr.setSenderNo(loginUser.getMemberNo());
		ArrayList<ChattingRoom> crList = chatService.chattingRoomList(cr);
		System.out.println("crList : " + crList);
		int memberNo = loginUser.getMemberNo();
		session.setAttribute("memberNo", memberNo);

		System.out.println("dddd" + crList);
		
	    ArrayList<Message> lastMsg = (ArrayList<Message>) session.getAttribute("lastMsg");
	    System.out.println(lastMsg);
	    
		session.setAttribute("crList", crList);
		return "chatting/chattingRoom";
	}

}
