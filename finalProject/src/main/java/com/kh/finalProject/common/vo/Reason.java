package com.kh.finalProject.common.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Reason {
	private int memberNo;
	private String reaContent;
	private Date retireDate;
}
