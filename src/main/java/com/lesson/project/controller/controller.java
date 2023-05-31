package com.lesson.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class controller {
	
	@RequestMapping(value = "/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/")
	public String index2() {
		return "index";
	}
	
	@RequestMapping(value = "/login")
	public String login() {
		return "login";		
	}
	
	@RequestMapping(value = "/join")
	public String join() {
		return "join";		
	}
	
	@RequestMapping(value = "/ejoin")
	public String ejoin() {
		return "ejoin";		
	}
	

}
