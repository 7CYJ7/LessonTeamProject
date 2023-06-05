package com.lesson.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebController {
	
	@RequestMapping(value = "/index")
	public String index() {
		return "index"; // return 값은 jsp를 호출한다
	}
	
	@RequestMapping(value = "/")
	public String index2() {
		return "index";
	}
	
	@RequestMapping(value = "/expert")
	public String expert() {
		return "expert";
	}
	
	@RequestMapping(value = "/comunity")
	public String comunity() {
		return "comunity";
	}
	
	@RequestMapping(value = "/include/aaa")
	public String aaa() {
		return "/include/aaa";
	}
	
	@RequestMapping(value = "/include/bbb")
	public String bbb() {
		return "/include/bbb";
	}
	
	@RequestMapping(value = "/include/ccc")
	public String ccc() {
		return "/include/ccc";
	}
	
	@RequestMapping(value = "/include/ddd")
	public String ddd() {
		return "/include/ddd";
	}
	
	@RequestMapping(value = "/include/eee")
	public String eee() {
		return "/include/eee";
	}
	
	@RequestMapping(value = "/include/fff")
	public String fff() {
		return "/include/fff";
	}
	
	@RequestMapping(value = "/include/ggg")
	public String ggg() {
		return "/include/ggg";
	}
	
	@RequestMapping(value = "/include/hhh")
	public String hhh() {
		return "/include/hhh";
	}
	
	@RequestMapping(value = "/board_write")
	public String boardwrite() {
		return "board_write";
	}
}
