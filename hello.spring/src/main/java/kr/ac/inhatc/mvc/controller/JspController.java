package kr.ac.inhatc.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JspController {
	@RequestMapping("/")
	public String hello(Model model,String id) {
		model.addAttribute("data","sample data");
		model.addAttribute("id",id);
		return "hello";
	}
}
