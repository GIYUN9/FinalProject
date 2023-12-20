package com.kh.finalProject.board.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.finalProject.board.model.service.BoardService;
import com.kh.finalProject.board.model.vo.Board;
import com.kh.finalProject.board.model.vo.Likey;

@Controller
public class LikeyController {
	
	@Autowired
	private BoardService boardService;
	
	//좋아요 insert
	@RequestMapping(value="insert.li")
	public void likeyInsertBoard(Likey l,  HttpServletResponse response ) throws IOException {
		int result = boardService.insertLikey(l);
		
		if(result > 0) {
			response.getWriter().print(result);
		} else {
			System.out.println("좋아요 인설트 실패");
		}
	}
	
	//좋아요 +1
	@RequestMapping(value="increase.li")
	public void likeyIncrease(Likey l, HttpServletResponse response) throws IOException {
		//맴버 넘버, 보드 넘버 가지고 가서 있으면 y로 업데이트
		int result1 = boardService.updateYLikey(l);
		
		int result2 = boardService.increaseLikey(l);
		
		int likeyCount = boardService.selectLikeyCount(l);
		
		System.out.println("likeyCount값 : "+ likeyCount);
		
		int resultTotal = result1 * result2;
		
		if((resultTotal) > 0) {
			response.getWriter().print(resultTotal);
		} else {
			System.out.println("++더해주는 거 실패");
		}
		
	}

}
