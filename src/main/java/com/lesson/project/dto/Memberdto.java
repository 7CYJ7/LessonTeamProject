package com.lesson.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Memberdto {
	
	private String mid; //아이디
	private String mpw; //비밀번호
	private String mname; //이름
	private String meamil; //이메일
	private String mmobile; //휴대전화번호
	private String mdate; //가입일시
	

}
