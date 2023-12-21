package com.kh.finalProject.pay.model.vo;

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
public class Pay {
	private int payNo; //데이터베이스에 저장될 고유값
	private int price; // 가격
	private Date createDate; // 결제일
	
	private int memberNo;
}
