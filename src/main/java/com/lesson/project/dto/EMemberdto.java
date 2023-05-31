package com.lesson.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EMemberdto {
	
	private String eid; //아이디
	private String epw; //비밀번호
	private String ename; //이름
	private String eemail; //이메일
	private String emobile; //휴대전화번호
	private String egender; //성별
	private String etype; //분야
	private String earea; //지역
	private String edate; //가입일시

}
