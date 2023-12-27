package com.kh.finalProject.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/**
 * 
 * setter , getter 롬북 사용
 *
 */

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Member {
	private int memberNo;
	private String memberEmail;
	private String memberPwd;
	private String memberName;
	private String memberConcern;
	private String phone;
	private String location;
	private String status;
	private String memberGender;
	private int point;
	private String filePath;
	private int account;
	private String intro;
	private Date enrollDate;
	private int skillNo;
	
	private String skillName;
}
