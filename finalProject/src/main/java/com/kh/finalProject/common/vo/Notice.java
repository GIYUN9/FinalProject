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
public class Notice {
	private int noticeNo;
	private String noticeType;
	private String noticeTitle;
	private String noticeContent;
	private Date createDate;
	private String status;
	
	private String location;
}
