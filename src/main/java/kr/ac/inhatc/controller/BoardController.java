package kr.ac.inhatc.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.inhatc.dto.BoardDto;
import kr.ac.inhatc.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService boardService;
	
	@RequestMapping("/")
	public String hello(Model model, String id) {
		model.addAttribute("data", "sample data");
		model.addAttribute("data2", "korea");
		model.addAttribute("id", id);
		return "hello";
	}

	@RequestMapping("board2")
	public ModelAndView board2() {
		ModelAndView mv =new ModelAndView();
		mv.addObject("title","ModelAndView");
		mv.setViewName("board");
		return mv;
	}

	//파라미터로 id를 입력 받고
	//이 id를 화면에서 출력?
	@RequestMapping("testdb.do")
	public String board(Model model, 
			@RequestParam(name = "searchKeyword",required = false,defaultValue = "검색")String id) {
		model.addAttribute("id",id);
		try {
			List<?> l = boardService.selectSubjectList(id,1);
			//int count = boardService.selectSubjectListCount(id);
			model.addAttribute("subjectList",l);
			//model.addAttribute("count",count);
			System.out.println(l.toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "board2";
	}
	@RequestMapping("testdb2")
	public String board2(Model model, 
			@RequestParam(name = "test",required = false,defaultValue = "연습페이지")String id) {
		model.addAttribute("id",id);
		try {
			List<BoardDto> l = boardService.selectSubjectList2("code");
			model.addAttribute("subjectList",l);
			System.out.println(l.toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "board3";
	}
	@RequestMapping("testdb")
	public ModelAndView board1(
			@RequestParam(name = "searchKeyword",required = false,defaultValue = "")String id,
			@RequestParam(name = "page",required = false,defaultValue = "1")Integer page) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("id",id);
		mv.setViewName("board2");
		try {
			List<?> l = boardService.selectSubjectList(id, page);
			int count = boardService.selectSubjectListCount(id);
			mv.addObject("cnt",count);
			mv.addObject("selectSubjectList",l);
			System.out.println(l.toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	@RequestMapping("/boardDetail.do")
	public ModelAndView boardDetail(String no) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("boardDetail");
		mv.addObject("detail",boardService.selectDetail(no));
		mv.addObject("title", "상세");
		return mv;
	}

	@RequestMapping("/regSubject.do")
	public ModelAndView regSubject() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("title", "등록");
		mv.setViewName("boardDetail");
		return mv;
	}
	@RequestMapping("/insertSubject.do")
	public ModelAndView insertSubject(String title, String author,
			String price) throws Exception{
		HashMap<String, String> hashMap = new HashMap<String,String>();
		hashMap.put("title", title);
		hashMap.put("author", author);
		hashMap.put("price", price);
		boardService.insertSubject(hashMap);
		return boardDetail("");
	}
	@RequestMapping("/modifySubject.do")
	public ModelAndView modifySubject(String id,String title, String author,
			String price) throws Exception{
		HashMap<String, String> hashMap = new HashMap<String,String>();
		hashMap.put("id", id);
		hashMap.put("title", title);
		hashMap.put("author", author);
		hashMap.put("price", price);
		boardService.modifySubject(hashMap);
		return boardDetail(id);
	}
	@RequestMapping("/deleteSubject.do")
	public ModelAndView deleteSubject(String id) throws Exception{
		boardService.deleteSubject(id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/testdb.do");
		return mv;
	}
}
