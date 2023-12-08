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
public class Comment {
	private int commentNo; // 댓글번호
	private Date commentCreated; //댓글작성일
	private String content; // 댓글내용
	private int boardNo;
	private int memberNo;
}
