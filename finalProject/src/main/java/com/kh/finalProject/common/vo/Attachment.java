package com.kh.finalProject.common.vo;

import lombok.Data;

@Data
public class Attachment {
	private int attNo;
	private String originName;
	private String changeName;
	private String filePath;
	private String status;
	private int fileLevel;
	
	private int boardNo;
}
