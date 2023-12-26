package com.kh.finalProject.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.kh.finalProject.board.model.service.BoardService;
import com.kh.finalProject.board.model.vo.Board;
import com.kh.finalProject.board.model.vo.Reply;

@Controller
public class ReplyController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "insert.re", method = RequestMethod.POST)
	public void insertReply(Reply r, HttpServletResponse response) throws IOException {
		

		int result = boardService.insertReply(r);
	
		if(result > 0) {
			response.getWriter().print(result);
		} else {
			System.out.println("댓글 등록 실패");
		}

	}
	
	@RequestMapping(value="list.re")
	public void replyList(Board b, HttpServletResponse response) throws JsonIOException, IOException {		
		ArrayList<Reply> list = boardService.selectReplyList(b);
		System.out.println("replyList list : "+list);
		response.setContentType("application/json; charset=utf-8");
		new Gson().toJson(list, response.getWriter());
	}
	
	@RequestMapping(value="delete.re")
	public void deleteReply(int replyNo, HttpServletResponse response) throws IOException {
		
		int result = boardService.deleteReply(replyNo);
		
		if(result > 0 ) {
			response.getWriter().print(result);
		}else {
			System.out.println("댓글삭제 실패!!");
		}

	}

}
