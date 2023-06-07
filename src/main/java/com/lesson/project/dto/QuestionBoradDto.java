package com.lesson.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class QuestionBoradDto {
	
	private int qnum; //q&a 글번호(기본키)
	private String qid; //q&a 글쓴이 아이디
	private String qtitle; //q&a 제목
	private String qcontent; //q&a 내용
	private int qanswercount; //q&a 답변 개수
	private int qfilecount; //q&a 첨부된 파일 개수
	private String qdate; //q&a 등록일
	
}
