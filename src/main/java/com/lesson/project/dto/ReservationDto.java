package com.lesson.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReservationDto {
	
	private int rtnum; //예약 번호(기본키)
	private String rtdate; //예약 신청 날짜
	private String mid; //예약 아이디
	private String rtemail; //예약 이메일
	private String rtmobile; //예약 휴대전화번호

}
