package com.lesson.project.dao;

import java.util.List;

import com.lesson.project.dto.LMBoardDto;
import com.lesson.project.dto.LMReplyDto;

public interface IDao {
	
	// 게시판 기본기능
	public int boardWriteDao(String lname, String ltitle, String lcontent, String luserid);
	public List<LMBoardDto> boardListDao(); // 게시판 모든글 리스트
	public int boardTotalCountDao(); // 게시판 총 글 개수
	public LMBoardDto boardContentViewDao(String lnum); // 클릭한 글의 내용 보기
	public void boardHitDao(String lnum); // 조회수 증가
	public void boardDeleteDao(String lnum); // 게시판 글 삭제
	
	// 댓글 기능
	public int replyWriteDao(String lrcontent, String lrorinum); // 댓글 입력
	public void replyCountDao(String lrorinum); // 댓글이 달린 원글의 댓글 필드 값 +1
	public List<LMReplyDto> replyListDao(String lrorinum); // 해당 원글에 달린 댓글의 리스트 가져오기
	public void replyDeleteDao(String lrnum);
	public void replyCountMinusDao(String lrorinum); // 댓글이 달린 원글의 댓글 필드 값 -1
	
	
}
