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
	private String scheTitle;
	private String scheContent;
	private int boardNo;
	private int fromMemberNo;
	private int toMemberNo;
	private int categoryNo;
	private String status;
	private Date createDate;
	private String location;
	
	private String memberName;
	private String categoryName;
	private String phone;
}
