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
public class Report {
	private int reportNo;
	private String reportTitle;
	private String reportContent;
	private Date createDate;
	private int memberNo;
	private String memberName;
	private String adminComent;
	private String status;
}
