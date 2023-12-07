package com.kh.finalProject.common.vo;

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
public class Schedule {
	private int scheNo;
	private String title;
	private String writer;
	private String img;
	private String location;
	private String category;
	private String service;
	private String content;
	private int memNo;
	private Date createadate;
	private String status;
}
