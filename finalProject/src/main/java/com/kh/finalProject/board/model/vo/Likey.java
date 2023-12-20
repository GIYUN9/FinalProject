package com.kh.finalProject.board.model.vo;



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
public class Likey {
	
	private int likeyNo;
	
	private int boardNo;
	
	private int memberNo;
	
	private String status; 

}
