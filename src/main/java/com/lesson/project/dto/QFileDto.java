package com.lesson.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class QFileDto {
	
	private int qfilenum; //파일의 고유번호(기본키-시퀀스)
	private int qfileinum; //파일이 첨부된 원글의 게시판 글 번호
	private String qfileoriname; //첨부된 파일의 원래 이름
	private String qfilename; //첨부된 파일의 랜덤으로 바뀐 이름
	private String qfileextension; //첨부된 파일의 확장자
	private String fileurl; //첨부된 파일이 실제로 저장된 서버의 저장경로

}
