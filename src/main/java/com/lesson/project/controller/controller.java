package com.lesson.project.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lesson.project.dao.LDao;

@Controller
public class controller {
	
	@Autowired
	private SqlSession sqlSession;
	
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
		return "loginChoice";		
	}
	
	@RequestMapping(value = "/join")
	public String join() {
		return "join";		
	}	
	
	@RequestMapping(value = "/joinOk")
	public String joinOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		String mmobile = request.getParameter("mmobile");
		
		LDao dao = sqlSession.getMapper(LDao.class);
		
		int joinCheck = 0;
				
		int checkId = dao.checkIdDao(mid); //가입하려는 id 존재여부 체크, 1이면 이미 존재
		
		if(checkId == 0) {
			joinCheck = dao.joinDao(mid, mpw, mname, memail, mmobile);
			model.addAttribute("checkId", checkId);
			//joinCheck 값이 1이면 회원가입 성공, 아니면 가입실패
		} else {
			model.addAttribute("checkId", checkId);
		}
		
		if(joinCheck == 1) {
			model.addAttribute("joinFlag", joinCheck);
			model.addAttribute("memberName", mname);
			model.addAttribute("memberId", mid);
		} else { //회원 가입실패
			model.addAttribute("joinFlag", joinCheck);
		}
		
		return "joinOk";
	}
	
	@RequestMapping(value = "/ejoin")
	public String ejoin() {
		return "ejoin";		
	}
	
	@RequestMapping(value = "/ejoinOk")
	public String ejoinOk(HttpServletRequest request, Model model) {
		
		String eid = request.getParameter("eid");
		String epw = request.getParameter("epw");
		String ename = request.getParameter("ename");
		String eemail = request.getParameter("eemail");
		String emobile = request.getParameter("emobile");
		String egender = request.getParameter("egender");
		String etype = request.getParameter("etype");
		String earea = request.getParameter("earea");		
		
		LDao dao = sqlSession.getMapper(LDao.class);
		
		int e_joinCheck = 0;
				
		int e_checkId = dao.e_checkIdDao(eid) ; //가입하려는 id 존재여부 체크, 1이면 이미 존재
		
		if(e_checkId == 0) {
			e_joinCheck = dao.e_joinDao(eid, epw, ename, eemail, emobile, egender, etype, earea);
			model.addAttribute("e_checkId", e_checkId);
			//e_joinCheck 값이 1이면 회원가입 성공, 아니면 가입실패
		} else {
			model.addAttribute("e_checkId", e_checkId);
		}
		
		if(e_joinCheck == 1) {
			model.addAttribute("e_joinFlag", e_joinCheck);
			model.addAttribute("ememberName", ename);
			model.addAttribute("ememberId", eid);
		} else { //회원 가입실패
			model.addAttribute("e_joinFlag", e_joinCheck);
		}
		
		return "ejoinOk";
	}

}
