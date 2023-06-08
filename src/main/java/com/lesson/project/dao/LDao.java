package com.lesson.project.dao;

import java.util.List;

import com.lesson.project.dto.AnswerDto;
import com.lesson.project.dto.EMemberDto;
import com.lesson.project.dto.MemberDto;
import com.lesson.project.dto.QFileDto;
import com.lesson.project.dto.QuestionBoardDto;

public interface LDao {
	
	//회원관리
	public int joinDao(String mid, String mpw, String mname, String memail, String mmobile); //회원 가입
	public int checkIdDao(String mid); //가입하려는 id의 존재여부 체크
	public int checkIdPwDao(String mid, String mpw); //아이디와 비밀번호의 일치여부 체크
	public MemberDto getMemberInfo(String mid); //일반 회원 아이디로 조회하여 회원 정보 모두 가져오기
	public int modifyMemberDao(String mid, String mpw, String mname, String memail, String mmobile);//회원정보 수정
	
	//전문가 관리
	public int e_joinDao(String eid, String epw, String ename, String eemail, String emobile, String egender, String etype, String earea); //전문가 가입
	public int e_checkIdDao(String eid); //가입하려는 id의 존재여부 체크
	public int e_checkIdPwDao(String eid, String epw); //아이디와 비밀번호의 일치여부 체크
	public EMemberDto e_getMemberInfo(String eid); //전문가 아이디로 조회하여 회원 정보 모두 가져오기
	public int e_modifyMemberDao(String eid, String epw, String ename, String eemail, String emobile, String egender, String etype, String earea);//회원정보 수정
	
	//Q&A 기본 기능
	public int boardWriteDao(String qid, String qtitle, String qcontent, int qfilecount);
	public List<QuestionBoardDto> boardListDao(); //Q&A 모든 글 리스트
	public int boardTotalCountDao(); //Q&A 총 개수
	public QuestionBoardDto boardContentViewDao(String qnum); //클릭한 글의 내용보기
	public void boardDeleteDao(String qnum); //Q&A 글 삭제
	
	//Q&A 검색 기능
	public List<QuestionBoardDto> boardSearchTitleDao(String keyword);//Q&A 제목에서 검색
	public List<QuestionBoardDto> boardSearchContentDao(String keyword);//Q&A 제목에서 검색
	public List<QuestionBoardDto> boardSearchWriterDao(String keyword);//Q&A 제목에서 검색
	
	//답변 기능
	public int answerWriteDao(String acontent, String aorinum);//답변 입력
	public void answerCountDao(String aorinum);//답변이 달린 원글의 답변 필드 값 +1
	public List<AnswerDto> answerListDao(String aorinum);//해당 원글에 달린 답변의 리스트 가져오기
	public void answerDeleteDao(String anum);//답변 삭제
	public void answerCountMinusDao(String aorinum);//답변이 달린 원글의 답변 필드 값 -1
		
	//파일 첨부 관련 기능
	public void fileInfoCreateDao(int qfileinum, String qfileoriname, String qfilename, String qfileextension, String qfileurl);
	public QFileDto getFileInfoDao(String qfileinum);//파일이 첨부된 글의 번호로 검색하여 파일정보 가져오기
	
	
}
