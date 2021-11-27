package kr.ac.inhatc.mvc.controller;

import org.springframework.web.bind.annotation.*;

@RestController
public class MvcController {

	@RequestMapping("hello")
	public String hello() {
		return "hello world";
	}
}
