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
import com.kh.finalProject.board.model.vo.Board;
import com.kh.finalProject.board.model.vo.Likey;

@Controller
public class LikeyController {
	
	@Autowired
	private BoardService boardService;
	
	//좋아요 insert
	@ResponseBody
		@RequestMapping(value="insert.li")
			public String likeyInsertBoard(Likey l,  HttpServletResponse response ) throws IOException {
				int result1 = boardService.insertLikey(l);
				int result2 = 0;
				int result3 = 0;
				System.out.println("result1   : "  + result1);
				Map<String, Object> map = new HashMap<>();
				l = boardService.selectLikey(l);
				if(l == null) {
					System.out.println("null이다 씨발");
				}
				
				if(result1 > 0) {
					map.put("result1", result1);
				} else {
					if(l.getLiStatus().equals("N")) {
						result2 = boardService.updateYLikey(l);
						Board likeyCount = boardService.selectLikeyCount(l);
						likeyCount.getLikeyCount();
						map.put("result2", result2);	
						map.put("likeyCount", likeyCount.getLikeyCount());
					}
					else {
						result3 = boardService.updateNLikey(l);
						Board likeyCount = boardService.selectLikeyCount(l);
						map.put("result3", result3);
						map.put("likeyCount", likeyCount.getLikeyCount());
					}			
				}
			return new Gson().toJson(map);
		}

		@RequestMapping(value="increase.li")
		@ResponseBody
		public String likeyIncrease(Likey l, HttpServletResponse response) throws IOException {
			int result1 = 0;
			result1 = boardService.updateYLikey(l);
			Board likeyCount = boardService.selectLikeyCount(l);
			
			
			if((result1) > 0) {
				return new Gson().toJson(likeyCount);				
			} else {
				Map<String, Object> map = new HashMap<>();
				map.put("likeyCount", 0);
				return new Gson().toJson(map);				
			}	

		}

}
