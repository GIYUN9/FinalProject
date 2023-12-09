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
public class Attachment {
	private int attNo;
	private String originName;
	private String changeName;
	private String filePath;
	private String status;
	private int boardNo;
}
