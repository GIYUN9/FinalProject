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
	private int Price;
	private int boardType; //boardType에 따라 데이터 다르게
	private Date createDate;
	private String status; 
	private int memberNo;
	private int categoryNo;
}
