package com.lesson.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;

import com.lesson.project.dao.IDao;
import com.lesson.project.dto.LMBoardDto;

@Controller
public class WebController {
	
	@Autowired
	private SqlSession sqlSession;
	
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
	public String comunity(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("list", dao.boardListDao());
		model.addAttribute("totalCount", dao.boardTotalCountDao());		
		
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
	
	@RequestMapping(value = "/board_writeOk")
	public String board_writeOk(HttpServletRequest request) {
		
		String lname = request.getParameter("lname");
		String ltitle = request.getParameter("ltitle");
		String lcontent = request.getParameter("lcontent");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		return "redirect:board_list";
	}
	
	@RequestMapping(value = "/reply_write")
	public String reply_write(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.replyWriteDao(request.getParameter("lrcontent"), request.getParameter("lrorinum"));
		dao.replyCountDao(request.getParameter("lrorinum")); // 원글의 댓글 수를 1 증가
		model.addAttribute("boardDto", dao.boardContentViewDao(request.getParameter("lrorinum")));
		model.addAttribute("replyList", dao.replyListDao(request.getParameter("lrorinum")));
		
		return "comunity";
		
	}
	
	@RequestMapping(value="board_delete")
	public String board_delete(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.boardDeleteDao(request.getParameter("lnum"));
		
		return "redirect:comunity";
	}
	
	@RequestMapping(value="replyDelete")
	public String repply_delete(HttpServletRequest request, Model model) {		
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.replyDeleteDao(request.getParameter("lrnum")); // 댓글 삭제
		
		dao.replyCountMinusDao(request.getParameter("lrorinum")); // 댓글 개수 1개 삭제
		
		model.addAttribute("boardDto", dao.boardContentViewDao(request.getParameter("lrorinum")));
		
		model.addAttribute("replyList", dao.replyListDao(request.getParameter("lrorinum")));
		
		return "comunity";
	}
	
}
