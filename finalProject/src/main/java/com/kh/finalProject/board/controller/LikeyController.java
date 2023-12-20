package com.kh.finalProject.board.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.finalProject.board.model.service.BoardService;
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
		@ResponseBody
		public String likeyIncrease(Likey l, HttpServletResponse response) throws IOException {
			//맴버 넘버, 보드 넘버 가지고 가서 있으면 y로 업데이트
			int result1 = 0;
			result1 = boardService.updateYLikey(l);
			
			int result2 = 0;
			result2 = boardService.increaseLikey(l);
			
			int likeyCount = boardService.selectLikeyCount(l);
			
			Map<String, Object> map = new HashMap<>();
			
			System.out.println("likeyCount값 : "+ likeyCount);
			
			int resultTotal = result1 * result2;
			
			if((resultTotal) > 0) {
				map.put("likeyCount", likeyCount);
						
			} else {
				map.put("likeyCount", 0);
				
			}	
			return new Gson().toJson(map);
		}
		
		//좋아요-1
		@RequestMapping(value="decrease.li")
		@ResponseBody
		public String likeyDecrease(Likey l, HttpServletResponse response) throws IOException {
			//맴버 넘버, 보드 넘버 가지고 가서 있으면 y로 업데이트
			int result1 = 0;
			result1 = boardService.updateNLikey(l);
			
			int result2 = 0;
			result2 = boardService.decreaseLikey(l);
			
			int likeyCount = boardService.selectNLikeyCount(l);
			
			Map<String, Object> map = new HashMap<>();
			
			System.out.println("result1 : " + result1 + "result2 : " + result2);
			System.out.println("-1 Count값  :  "+ likeyCount);
			
			int resultTotal = result1 * result2;
			
			if((resultTotal) > 0) {
				map.put("likeyCount", likeyCount);
						
			} else {
				map.put("likeyCount", 0);
				
			}	
			return new Gson().toJson(map);
		}

	
	

}
