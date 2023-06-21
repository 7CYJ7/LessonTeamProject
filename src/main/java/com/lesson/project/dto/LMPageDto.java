package com.lesson.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LMPageDto {
	
	private int startPage; // 현재 화면에서 보여질 시작 페이지 번호
	private int endPage; // 현재 화면에서 보여질 마지막 페이지 번호
	private boolean prev; // 더 이하 페이지가 있는지의 여부
	private boolean next; // 더 이상 페이지가 있는지의 여부
	private int total; // 전체 페이지 개수(전체글의수 /(나누기) 한페이지당 보여줄 글의 개수 = 반올림한 값)
	
	private LMCriteria criteria;
	
	public LMPageDto(LMCriteria criteria, int total) {
		
		this.criteria = criteria;
		this.total = total;
		
		this.endPage = (int) (Math.ceil((criteria.getPageNum()/5.0))*5);
		this.startPage = this.endPage - 4;
		
		int realEndPage = (int) Math.ceil(total*1.0/criteria.getAmount());
		if(realEndPage<this.endPage) {
			this.endPage = realEndPage;
		}
		
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEndPage;
		
	}

}
