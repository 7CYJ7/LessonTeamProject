package com.lesson.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AnswerDto {
	
	private int anum; //답변 번호(기본키)
	private String aid; //답변 아이디
	private String acontent; //답변 내용
	private int aorinum; //답변을 단 원글의 q&a 번호
	private String adate; //답변등록일

}
