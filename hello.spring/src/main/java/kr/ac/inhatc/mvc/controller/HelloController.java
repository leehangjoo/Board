package kr.ac.inhatc.mvc.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	
	@RequestMapping("bye")
	public String bye(int num) {
		
		return "hello spring" + num;
	}
}
