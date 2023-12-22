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
public class Reply {

	private int replyNo;
	private int boardNo;
	
	private String replyContent;
	
	private int memberNo;
	private String memberName;
	
	private Date createDate;
	private String filePath;
	
	private int reLikeyCount;
}
