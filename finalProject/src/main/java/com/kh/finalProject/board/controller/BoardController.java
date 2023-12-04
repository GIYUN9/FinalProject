package com.kh.finalProject.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.finalProject.board.model.service.BoardService;

@Controller
public class BoardController {
	
	// 도와줄게요, 도와주세요, 커뮤니티 등등 게시판 으로 활용할 컨트롤러
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "help.bo")
	public String helpBoard() {
		//도와줄게요 화면
		return "board/helpBoardList";
	}
	
	@RequestMapping(value="request.bo")
	public String requestBoard() {
		// 도와주세요 화면
		return "board/requestBoardList";
	}
	
	@RequestMapping(value="detail.bo")
	public String detailBoard() {
		// 클릭시 상세페이지 이동 (하나밖에 없음)
		return "board/boardDetailView";
	}
	@RequestMapping(value = "/curious.co")
	public String curiousBoard(){
		//화면 전환용 임시 데이터는 없는상태
		return "noticeBoard/curiousBoard";
	}
	@RequestMapping(value = "/much.co")
	public String muchBoard(){
		//화면 전환용 임시 데이터는 없는상태
		return "noticeBoard/muchBoard";
	}
	@RequestMapping(value = "/together.co")
	public String togetherBoard(){
		//화면 전환용 임시 데이터는 없는상태
		return "noticeBoard/togetherBoard";
	}
	@RequestMapping(value = "/notice.co")
	public String noticeBoard(){
		//화면 전환용 임시 데이터는 없는상태
		return "noticeBoard/noticeBoard";
	}
		@RequestMapping(value = "/viewall.co")
	public String allBoardBoard(){
		//화면 전환용 임시 데이터는 없는상태
		return "noticeBoard/allBoard";
	}

//	스크립트 기능 후 가진 정보 보내주는 기능 
//	나중에 작성!
//	@RequestMapping(value="")
//	public String reportModal() {
//		
//		
//		return "board/reportModal";
//	}
//	
//	@RequestMapping(value="")
//	public String reportModal() {
//		
//		return "board/reportModal";
//	}
	

}
