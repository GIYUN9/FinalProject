package com.kh.finalProject.mail;

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
public class EmailCheck {
	private int authNo;
	private String authEmail;
	private int authRandom;
	private Date createDate;
	
	private int checkNo;
}
