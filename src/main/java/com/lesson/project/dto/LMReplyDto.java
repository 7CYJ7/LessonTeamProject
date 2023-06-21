package com.lesson.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LMReplyDto {
	
	private int lrnum; // 댓글 번호(기본키)
	private String lrcontent; // 댓글 내용
	private String lrid; // 댓글 쓴 유저 아이디
	private int lrorinum; // 댓글을 단 원글의 게시판 번호
	private String lrdate; // 댓글 등록일

}
