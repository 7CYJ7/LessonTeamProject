package com.lesson.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebController {
	
	@RequestMapping(value = "/main")
	public String main() {
		return "main";
	}
	
	@RequestMapping(value = "/")
	public String main2() {
		return "main";
	}
	
	@RequestMapping(value= "/expert")
	public String expert() {
		return "exptert";
	}
}
