package kr.ac.inhatc.mvc.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class test3 {
	
	@RequestMapping("gugudan")
	public String gugu(int num) {
		String a = "";
		for (int i = 1;i<10;i++) {
			a = a + num + "*" + i + "=" + num*i + " ";
		}
		return  a;
	}
}
