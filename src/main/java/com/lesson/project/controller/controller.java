package com.lesson.project.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.lesson.project.dao.LDao;
import com.lesson.project.dto.MemberDto;
import com.lesson.project.dto.QuestionBoardDto;
import com.lesson.project.dto.EMemberDto;

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
		return "login";		
	}
	
	@RequestMapping(value = "/loginOk")
	public String loginOk(HttpServletRequest request, Model model, HttpSession session) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		LDao dao = sqlSession.getMapper(LDao.class);
		
		int checkIdPwFlag = dao.checkIdPwDao(mid, mpw);
		//1이면 로그인 성공, 0이면 로그인 실패
		
		model.addAttribute("checkIdPwFlag", checkIdPwFlag);
		
		if(checkIdPwFlag == 1) {//로그인 성공 실행
			session.setAttribute("sessionId", mid);			
			
			model.addAttribute("MemberDto", dao.getMemberInfo(mid));
		}
		
		return "loginOk";
	}
	
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.invalidate();//세션 삭제->로그아웃
		
		return "redirect:loginChoice";
	}
	
	@RequestMapping(value = "/elogin")
	public String elogin() {
		return "elogin";		
	}
	
	@RequestMapping(value = "/eloginOk")
	public String eloginOk(HttpServletRequest request, Model model, HttpSession session) {
		
		String eid = request.getParameter("eid");
		String epw = request.getParameter("epw");
		
		LDao dao = sqlSession.getMapper(LDao.class);
		
		int e_checkIdPwFlag = dao.e_checkIdPwDao(eid, epw);
		//1이면 로그인 성공, 0이면 로그인 실패
		
		model.addAttribute("e_checkIdPwFlag", e_checkIdPwFlag);
		
		if(e_checkIdPwFlag == 1) {//로그인 성공 실행
			session.setAttribute("sessionId", eid);			
			
			model.addAttribute("EMemberDto", dao.e_getMemberInfo(eid));
		}
		
		return "eloginOk";
	}

	@RequestMapping(value = "/elogout")
	public String elogout(HttpSession session) {
		session.invalidate();//세션 삭제->로그아웃
		
		return "redirect:loginChoice";
	}	
	
	@RequestMapping(value = "/loginChoice")
	public String loginChoice() {
		return "loginChoice";
	}
	
	@RequestMapping(value = "/joinChoice")
	public String joinChoice() {
		return "joinChoice";
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
			model.addAttribute("MemberName", mname);
			model.addAttribute("MemberId", mid);
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
	
	@RequestMapping(value = "/modify")
	public String modify(HttpSession session, Model model) {
		String sessionId = (String) session.getAttribute("sessionId");
		
		LDao dao = sqlSession.getMapper(LDao.class);
		
		model.addAttribute("MemberDto", dao.getMemberInfo(sessionId));
		
		return "modifyForm";
	}
	
	@RequestMapping(value = "/modifyOk")
	public String modifyOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		String mmobile = request.getParameter("mmobile");
		
		LDao dao = sqlSession.getMapper(LDao.class);
		
		dao.modifyMemberDao(mid, mpw, mname, memail, mmobile);
		
		model.addAttribute("MemberDto", dao.getMemberInfo(mid));//수정이 된 후 회원 정보
		
		return "modifyOk";		
	}
	
	@RequestMapping(value = "/emodify")
	public String emodify(HttpSession session, Model model) {
		String sessionId = (String) session.getAttribute("sessionId");
		
		LDao dao = sqlSession.getMapper(LDao.class);
		
		model.addAttribute("EMemberDto", dao.e_getMemberInfo(sessionId));
		
		return "emodifyForm";
	}
	
	@RequestMapping(value = "/emodifyOk")
	public String emodifyOk(HttpServletRequest request, Model model) {
		
		String eid = request.getParameter("eid");
		String epw = request.getParameter("epw");
		String ename = request.getParameter("ename");
		String eemail = request.getParameter("eemail");
		String emobile = request.getParameter("emobile");
		String egender = request.getParameter("egender");
		String etype = request.getParameter("etype");
		String earea = request.getParameter("earea");
		
		LDao dao = sqlSession.getMapper(LDao.class);
		
		dao.e_modifyMemberDao(eid, epw, ename, eemail, emobile, egender, etype, earea);
		
		model.addAttribute("EMemberDto", dao.e_getMemberInfo(eid));//수정이 된 후 회원 정보
		
		return "emodifyOk";		
	}
	
	@RequestMapping(value = "questionHome")
	public String questionHome(Model model) {
		
		LDao dao = sqlSession.getMapper(LDao.class);
		
		model.addAttribute("list", dao.boardListDao());
		model.addAttribute("totalCount", dao.boardTotalCountDao());
		
		return "questionHome";
	}
	
	@RequestMapping(value = "question_write")
	public String question_write() {
		
		return "question_write";
	}

	@RequestMapping(value = "/question_view")
	public String question_view(HttpServletRequest request, Model model) {
		
		LDao dao = sqlSession.getMapper(LDao.class);
		
		model.addAttribute("boardDto", dao.boardContentViewDao(request.getParameter("qnum")));
		
		model.addAttribute("answerList", dao.answerListDao(request.getParameter("qnum")));
		
		model.addAttribute("fileDto", dao.getFileInfoDao(request.getParameter("qnum")));
		
		return "question_view";
	}
	
	@RequestMapping(value = "/question_writeOk")
	public String question_writeOk(HttpServletRequest request, @RequestPart MultipartFile files) throws IllegalStateException, IOException {
		
		String qid = request.getParameter("qid");
		String qtitle = request.getParameter("qtitle");
		String qcontent = request.getParameter("qcontent");
		
		LDao dao = sqlSession.getMapper(LDao.class);
		
		if(files.isEmpty()) {//true면 파일이 첨부가 안됨		
			dao.boardWriteDao(qid, qtitle, qcontent, 0);//파일 첨부 없이 글만 입력
		} else {//파일이 첨부된 경우
			dao.boardWriteDao(qid, qtitle, qcontent, 1);//파일이 첨부된 상태로 글을 쓴 경우
			List<QuestionBoardDto> boardList = dao.boardListDao();//모든 글 목록 가져오기
			QuestionBoardDto boardDto = boardList.get(0);//방금 쓴 글
			int qfileinum = boardDto.getQnum();//방금 쓴글의 번호(파일이 첨부된 글의 번호)
			
			//파일첨부관련 작업
			String qfileoriname = files.getOriginalFilename();//첨부된 파일의 원래 이름
			String qfileextension = FilenameUtils.getExtension(qfileoriname).toLowerCase();
			//파일의 확장자 가져온 후에 소문자로 변경
			File destinationFile;
			String destinationFileName;//실제 서버에 저장된 파일의 변경된 이름이 저장될 변수
			String qfileurl="C:/springboot_workspace/project/LessonTeamProject/src/main/resources/static/uploadfiles/";
			//첨부된 파일이 저장될 서버의 실제 폴더의 경로
			
			do {
			destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + qfileextension;
			//알파벳대소문자+숫자로 이루어진 랜덤 32글자의 문자열 이름으로된 파일이름 생성->서버에 이 이름으로 저장
			destinationFile = new File(qfileurl+destinationFileName);
			} while(destinationFile.exists());//같은 파일이름이 혹시 존재하는지 확인
			
			destinationFile.getParentFile().mkdir();
			files.transferTo(destinationFile);//업로드된 첨부된 파일이 지정한 폴더로 이동 완료! 
			
			dao.fileInfoCreateDao(qfileinum, qfileoriname, destinationFileName, qfileextension, qfileurl);
		}
				
		return "redirect:questionHome";
	}
	
	@RequestMapping(value = "/search_list")
	public String search_list(HttpServletRequest request, Model model) {
		
		String searchOption = request.getParameter("searchOption");
		String keyword = request.getParameter("keyword");
		
		LDao dao = sqlSession.getMapper(LDao.class);
		
		if(searchOption.equals("title" )) {
			model.addAttribute("list", dao.boardSearchTitleDao(keyword));
			model.addAttribute("totalCount", dao.boardSearchTitleDao(keyword).size());
		} else if(searchOption.equals("content")) {
			model.addAttribute("list", dao.boardSearchContentDao(keyword));
			model.addAttribute("totalCount", dao.boardSearchContentDao(keyword).size());
		} else {
			model.addAttribute("list", dao.boardSearchWriterDao(keyword));
			model.addAttribute("totalCount", dao.boardSearchWriterDao(keyword).size());
		}
		
		return "questionHome";
	}
	
	@RequestMapping(value = "/answer_write")
	public String answer_write(HttpServletRequest request, Model model) {
				
		LDao dao = sqlSession.getMapper(LDao.class);
		
		dao.answerWriteDao(request.getParameter("acontent"), request.getParameter("aorinum"));		
		
		dao.answerCountDao(request.getParameter("aorinum"));//원글의 답변 수를 1증가		
		
		model.addAttribute("boardDto", dao.boardContentViewDao(request.getParameter("aorinum")));
		
		model.addAttribute("answerList", dao.answerListDao(request.getParameter("aorinum")));
				
		return "question_view";
	}
	
	@RequestMapping(value = "/question_delete")
	public String question_delete(HttpServletRequest request) {
		
		LDao dao = sqlSession.getMapper(LDao.class);
		
		dao.boardDeleteDao(request.getParameter("qnum"));
		
		return "redirect:questionHome";
	}
	
	@RequestMapping(value = "/answerDelete")
	public String answerDelete(HttpServletRequest request, Model model) {		
		
		LDao dao = sqlSession.getMapper(LDao.class);
		
		dao.answerDeleteDao(request.getParameter("anum"));//답변 삭제
		
		dao.answerCountMinusDao(request.getParameter("aorinum"));//답변 개수 1개 삭제
		
		model.addAttribute("boardDto", dao.boardContentViewDao(request.getParameter("aorinum")));
		
		model.addAttribute("answerList", dao.answerListDao(request.getParameter("aorinum")));
		
		return "question_view";
	}
}
