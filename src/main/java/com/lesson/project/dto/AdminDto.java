package com.lesson.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AdminDto {
	
	private String admin_id; //관리자 아이디
	private String admin_pw; //관리자 비밀번호

}
