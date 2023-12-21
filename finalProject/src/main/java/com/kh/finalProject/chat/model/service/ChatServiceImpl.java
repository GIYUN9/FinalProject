package com.kh.finalProject.chat.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalProject.chat.model.dao.ChatDao;
import com.kh.finalProject.chat.model.vo.ChattingRoom;
import com.kh.finalProject.chat.model.vo.Message;

@Service
public class ChatServiceImpl implements ChatService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private ChatDao chatDao;

	@Override
	public Message messageLoad(Message m) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ChattingRoom> chattingRoomList(ChattingRoom cr) {
		ArrayList<ChattingRoom> chattingRoomList = chatDao.chattingRoomList(sqlSession, cr);
		return chattingRoomList;
	}
	
	
	
}
