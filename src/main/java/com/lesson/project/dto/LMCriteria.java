package com.lesson.project.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LMCriteria {
	
	private int pageNum=1;
	private int amount=10;
	private int startNum;

}
