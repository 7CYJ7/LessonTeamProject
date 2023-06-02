package com.lesson.project.dao;

import com.lesson.project.dto.EMemberDto;
import com.lesson.project.dto.MemberDto;

public interface LDao {
	
	//회원관리
	public int joinDao(String mid, String mpw, String mname, String memail, String mmobile); //회원 가입
	public int checkIdDao(String mid); //가입하려는 id의 존재여부 체크
	public int checkIdPwDao(String mid, String mpw); //아이디와 비밀번호의 일치여부 체크
	public MemberDto getMemberInfo(String mid); //일반 회원 아이디로 조회하여 회원 정보 모두 가져오기
	
	//전문가 관리
	public int e_joinDao(String eid, String epw, String ename, String eemail, String emobile, String egender, String etype, String earea); //전문가 가입
	public int e_checkIdDao(String eid); //가입하려는 id의 존재여부 체크
	public int e_checkIdPwDao(String eid, String epw); //아이디와 비밀번호의 일치여부 체크
	public EMemberDto getMemberInfo2(String eid); //전문가 아이디로 조회하여 회원 정보 모두 가져오기
}
