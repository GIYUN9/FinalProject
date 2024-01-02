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
		int result = chatService.insertMsg(msg); 
		
		if(result > 0) {
			return "chatting/chat";
		} else {
			model.addAttribute("errorMsg", "");
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
		
//		ArrayList<Message> lastMsg = chatService.lastMsg(msg);
//		session.setAttribute("lastMsg", lastMsg);
//		System.out.println("lastMsg" + lastMsg);
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

//		for (ChattingRoom chatRoom : crList) {
//			//int chatRoomNo = chatRoom.getChatRoomNo();
//			//session.setAttribute("chatRoomNo", chatRoomNo);
//			ArrayList<ChattingRoom> senderInfoList  = chatService.senderInfo(chatRoomNo, memberNo);
//			System.out.println("memberNo aasaaaasddsfdsfdsfsdfds : " + memberNo);
//			session.setAttribute("memName", senderInfoList);		
//		}
		System.out.println("dddd" + crList);
		
		session.setAttribute("crList", crList);
		return "chatting/chattingRoom";
	}
//    System.out.println("chatRoomNo(채팅방 번호): " + chatRoomNo);
//    System.out.println("senderInfoList(상대방): " + senderInfoList);
//    Object mem = session.getAttribute("memName");
//    System.out.println("mem:"+mem);
//    ArrayList<Chatter> memNameList = (ArrayList<Chatter>) session.getAttribute("memName");	
	
}
