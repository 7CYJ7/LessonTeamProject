package com.lesson.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebController {
	
	@RequestMapping(value = "/index")
	public String index() {
		return "index";
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
}
