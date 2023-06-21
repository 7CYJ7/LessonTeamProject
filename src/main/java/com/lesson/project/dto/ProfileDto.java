package com.lesson.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProfileDto {

	private int pnum; //프로필 번호(기본키)
	private String pname; //프로필 이름
	private String pcontent; //프로필 내용
	private String ptype; //프로필 분야
}
