package kr.ac.inhatc.mvc.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class test1 {
	@RequestMapping("inhatc")
	public String inhatc() {
		
		return "http://www.inhatc.ac.kr";
	}
}
