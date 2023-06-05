package com.lesson.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LMBoardDto {
	
	private int lnum; // 게시판 기본키
	private String lname; // 게시판 글쓴이 이름
	private String ltitle; // 게시판 제목
	private String lcontent; // 게시판 내용
	private int lhit; // 조회수
	private String luserid; // 게시판 글쓴이 아이디
	private int lreplycount; // 첨부된 댓글의 개수
	private String ldate; // 게시글 등록일

}
