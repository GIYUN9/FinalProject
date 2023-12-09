package com.kh.finalProject.member.model.vo;

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
public class Professional {
	private int proNo;
	private String proJob;
	private int categoryNo;
	private int memberNo;
}
