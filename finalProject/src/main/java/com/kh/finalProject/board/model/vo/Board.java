package com.kh.finalProject.board.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Board {
	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private int price;
	private int boardType;
	private Date createDate;
	private String status; 
	private int memberNo;
	private int categoryNo;
	private String location;
	private String originName;
	
	private String memberName;
		private String changeName;
		private String filePath;
		
		private int likeyCount;
		private String liStatus;
		
		private int viewCount;
		
		
		private String intro;
		private int skillNo;
		private String phone;
		
		private String skillName;
		private String memberEmail;
	
	}
